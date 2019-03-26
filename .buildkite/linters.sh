#!/bin/bash

set -exuo pipefail

if [[ ! -z "$CLEAN_BUILD" ]]; then
  echo "--- cleanup"
  rm -rf /usr/local/var/bazelcache/*
fi

echo "--- Pre-setup :bazel:"

git checkout .bazelrc
rm -f bazel-*
mkdir -p /usr/local/var/bazelcache/output-bases/linters /usr/local/var/bazelcache/build /usr/local/var/bazelcache/repos
echo 'common --curses=no --color=yes' >> .bazelrc
echo 'startup --output_base=/usr/local/var/bazelcache/output-bases/linters' >> .bazelrc
echo 'build  --disk_cache=/usr/local/var/bazelcache/build --repository_cache=/usr/local/var/bazelcache/repos' >> .bazelrc
echo 'test   --disk_cache=/usr/local/var/bazelcache/build --repository_cache=/usr/local/var/bazelcache/repos' >> .bazelrc

./bazel version
export PATH=$PATH:$(pwd)

echo "+++ linters"
err=0
globalErr=0

./tools/scripts/format_build_files.sh -t &> buildifier || err=$?
if [ "$err" -ne 0 ]; then
    cat buildifier | buildkite-agent annotate --context tools/scripts/format_build_files.sh --style error --append
    globalErr=$err
fi

err=0
./tools/scripts/format_cxx.sh -t &> format_cxx || err=$?
if [ "$err" -ne 0 ]; then
    cat format_cxx | buildkite-agent annotate --context tools/scripts/format_cxx.sh --style error --append
    globalErr=$err
fi

err=0
./tools/scripts/build_compilation_db.sh &> compdb || err=$?
if [ "$err" -ne 0 ]; then
    cat compdb | buildkite-agent annotate --context tools/scripts/build_compilation_db.sh --style error --append
    globalErr=$err
fi

err=0
./tools/scripts/generate_compdb_targets.sh -t &> compdb-targets || err=$?
if [ "$err" -ne 0 ]; then
    cat compdb-targets | buildkite-agent annotate --context tools/scripts/generate_compdb_targets.sh --style error --append
    globalErr=$err
fi

err=0
./tools/scripts/check_using_namespace_std.sh &> std_check || err=$?
if [ "$err" -ne 0 ]; then
    cat std_check | buildkite-agent annotate --context tools/scripts/check_using_namespace_std.sh --style error --append
    globalErr=$err
fi

err=0
./tools/scripts/lint_sh.sh -t &> lint_sh || err=$?
if [ "$err" -ne 0 ]; then
    cat lint_sh | buildkite-agent annotate --context tools/scripts/lint_sh.sh --style error --append
    globalErr=$err
fi



if [ "$globalErr" -ne 0 ]; then
    exit $globalErr
fi
