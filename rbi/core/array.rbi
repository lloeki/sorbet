# typed: true
class Array < Object
  include Enumerable

  extend T::Generic
  Elem = type_member(:out)

  type_parameters(:U).sig(
      arg0: T.type_parameter(:U),
  )
  .returns(T::Array[T.type_parameter(:U)])
  def self.[](*arg0); end

  Sorbet.sig(
      arg0: T::Array[Elem],
  )
  .returns(T::Array[Elem])
  def &(arg0); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: String,
  )
  .returns(String)
  def *(arg0); end

  Sorbet.sig(
      arg0: T::Enumerable[Elem],
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: T::Array[Elem],
  )
  .returns(T::Array[Elem])
  def +(arg0); end

  Sorbet.sig(
      arg0: T::Array[Elem],
  )
  .returns(T::Array[Elem])
  def -(arg0); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T::Array[Elem])
  def <<(arg0); end

  Sorbet.sig(
      arg0: T.any(Integer, Float),
  )
  .returns(T.nilable(Elem))
  Sorbet.sig(
      arg0: T::Range[Integer],
  )
  .returns(T.nilable(T::Array[Elem]))
  Sorbet.sig(
      arg0: Integer,
      arg1: Integer,
  )
  .returns(T.nilable(T::Array[Elem]))
  def [](arg0, arg1=T.unsafe(nil)); end

  Sorbet.sig(
      arg0: Integer,
      arg1: Elem,
  )
  .returns(Elem)
  Sorbet.sig(
      arg0: Integer,
      arg1: Integer,
      arg2: Elem,
  )
  .returns(Elem)
  Sorbet.sig(
      arg0: T::Range[Integer],
      arg1: Elem,
  )
  .returns(Elem)
  def []=(arg0, arg1, arg2=T.unsafe(nil)); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T::Array[Elem])
  def assoc(arg0); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Elem)
  def at(arg0); end

  Sorbet.sig.returns(T::Array[Elem])
  def clear(); end

  type_parameters(:U).sig(
      blk: T.proc(arg0: Elem).returns(T.type_parameter(:U)),
  )
  .returns(T::Array[T.type_parameter(:U)])
  Sorbet.sig.returns(Enumerator[Elem])
  def collect(&blk); end

  Sorbet.sig(
      arg0: Integer,
      blk: T.proc(arg0: T::Array[Elem]).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Enumerator[Elem])
  def combination(arg0, &blk); end

  # This is implemented in C++ to fix the return type
  Sorbet.sig.returns(T::Array[T.untyped])
  def compact(); end

  Sorbet.sig.returns(T::Array[Elem])
  def compact!(); end

  Sorbet.sig(
      arg0: T::Array[Elem],
  )
  .returns(T::Array[Elem])
  def concat(arg0); end

  Sorbet.sig.returns(Integer)
  Sorbet.sig(
      arg0: Elem,
  )
  .returns(Integer)
  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(Integer)
  def count(arg0=T.unsafe(nil), &blk); end

  Sorbet.sig(
      arg0: Integer,
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T.untyped)
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Enumerator[Elem])
  def cycle(arg0=T.unsafe(nil), &blk); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T.nilable(Elem))
  Sorbet.sig(
      arg0: Elem,
      blk: T.proc().returns(Elem),
  )
  .returns(Elem)
  def delete(arg0, &blk); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T.nilable(Elem))
  def delete_at(arg0); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def delete_if(&blk); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def drop(arg0); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def drop_while(&blk); end

  Sorbet.sig.returns(Enumerator[Elem])
  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  def each(&blk); end

  Sorbet.sig(
      blk: T.proc(arg0: Integer).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def each_index(&blk); end

  Sorbet.sig.returns(T.any(TrueClass, FalseClass))
  def empty?(); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Elem)
  Sorbet.sig(
      arg0: Integer,
      arg1: Elem,
  )
  .returns(Elem)
  Sorbet.sig(
      arg0: Integer,
      blk: T.proc(arg0: Integer).returns(Elem),
  )
  .returns(Elem)
  def fetch(arg0, arg1=T.unsafe(nil), &blk); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: Elem,
      arg1: Integer,
      arg2: Integer,
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: Elem,
      arg1: T::Range[Integer],
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      blk: T.proc(arg0: Integer).returns(Elem),
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: Integer,
      arg1: Integer,
      blk: T.proc(arg0: Integer).returns(Elem),
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: T::Range[Integer],
      blk: T.proc(arg0: Integer).returns(Elem),
  )
  .returns(T::Array[Elem])
  def fill(arg0=T.unsafe(nil), arg1=T.unsafe(nil), arg2=T.unsafe(nil), &blk); end

  Sorbet.sig.returns(T.nilable(Elem))
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def first(arg0=T.unsafe(nil)); end

  # This is implemented in C++ to fix the return type
  Sorbet.sig(depth: Integer).returns(T::Array[T.untyped])
  def flatten(depth = -1); end

  type_parameters(:U).sig(
      arg0: T.type_parameter(:U),
  )
  .returns(T.any(TrueClass, FalseClass))
  def include?(arg0); end

  type_parameters(:U).sig(
      arg0: T.type_parameter(:U),
  )
  .returns(Integer)
  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(Integer)
  Sorbet.sig.returns(Enumerator[Elem])
  def index(arg0=T.unsafe(nil), &blk); end

  Sorbet.sig.returns(Object)
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Object)
  Sorbet.sig(
      arg0: Integer,
      arg1: Elem,
  )
  .void
  def initialize(arg0=T.unsafe(nil), arg1=T.unsafe(nil)); end

  Sorbet.sig(
      arg0: Integer,
      arg1: Elem,
  )
  .returns(T::Array[Elem])
  def insert(arg0, *arg1); end

  Sorbet.sig.returns(String)
  def inspect(); end

  Sorbet.sig(
      arg0: String,
  )
  .returns(String)
  def join(arg0=T.unsafe(nil)); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  def keep_if(&blk); end

  Sorbet.sig.returns(T.nilable(Elem))
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def last(arg0=T.unsafe(nil)); end

  Sorbet.sig.returns(Integer)
  def length(); end

  type_parameters(:U).sig(
      blk: T.proc(arg0: Elem).returns(T.type_parameter(:U)),
  )
  .returns(T::Array[T.type_parameter(:U)])
  Sorbet.sig.returns(Enumerator[Elem])
  def map(&blk); end

  type_parameters(:U).sig(
      blk: T.proc(arg0: Elem).returns(T.type_parameter(:U)),
  )
  .returns(T::Array[T.type_parameter(:U)])
  Sorbet.sig.returns(Enumerator[Elem])
  def map!(&blk); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T.any(TrueClass, FalseClass))
  def member?(arg0); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Enumerator[Elem])
  Sorbet.sig(
      arg0: Integer,
      blk: T.proc(arg0: T::Array[Elem]).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  def permutation(arg0=T.unsafe(nil), &blk); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(T.nilable(Elem))
  def pop(arg0=T.unsafe(nil)); end

  type_parameters(:U).sig(
      arg0: T::Array[T.type_parameter(:U)],
  )
  .returns(T::Array[T::Array[T.any(Elem, T.type_parameter(:U))]])
  def product(*arg0); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T::Array[Elem])
  def push(*arg0); end

  type_parameters(:U).sig(
      arg0: T.type_parameter(:U),
  )
  .returns(T.nilable(Elem))
  def rassoc(arg0); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def reject(&blk); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def reject!(&blk); end

  Sorbet.sig(
      arg0: Integer,
      blk: T.proc(arg0: T::Array[Elem]).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Enumerator[Elem])
  def repeated_combination(arg0, &blk); end

  Sorbet.sig(
      arg0: Integer,
      blk: T.proc(arg0: T::Array[Elem]).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(Enumerator[Elem])
  def repeated_permutation(arg0, &blk); end

  Sorbet.sig.returns(T::Array[Elem])
  def reverse(); end

  Sorbet.sig.returns(T::Array[Elem])
  def reverse!(); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def reverse_each(&blk); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T.nilable(Integer))
  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T.nilable(Integer))
  Sorbet.sig.returns(Enumerator[Elem])
  def rindex(arg0=T.unsafe(nil), &blk); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def rotate(arg0=T.unsafe(nil)); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def rotate!(arg0=T.unsafe(nil)); end

  Sorbet.sig.returns(T.nilable(Elem))
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def sample(arg0=T.unsafe(nil)); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def select(&blk); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def select!(&blk); end

  Sorbet.sig.returns(T.nilable(Elem))
  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def shift(arg0=T.unsafe(nil)); end

  Sorbet.sig.returns(T::Array[Elem])
  def shuffle(); end

  Sorbet.sig.returns(T::Array[Elem])
  def shuffle!(); end

  Sorbet.sig(
      arg0: T::Range[Integer],
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: Integer,
      arg1: Integer,
  )
  .returns(T::Array[Elem])
  Sorbet.sig(
      arg0: T.any(Integer, Float),
  )
  .returns(T.nilable(Elem))
  def slice!(arg0, arg1=T.unsafe(nil)); end

  Sorbet.sig.returns(T::Array[Elem])
  Sorbet.sig(
      blk: T.proc(arg0: Elem, arg1: Elem).returns(Integer),
  )
  .returns(T::Array[Elem])
  def sort(&blk); end

  Sorbet.sig.returns(T::Array[Elem])
  Sorbet.sig(
      blk: T.proc(arg0: Elem, arg1: Elem).returns(Integer),
  )
  .returns(T::Array[Elem])
  def sort!(&blk); end

  type_parameters(:U).sig(
      blk: T.proc(arg0: Elem).returns(T.type_parameter(:U)),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def sort_by!(&blk); end

  Sorbet.sig(
      arg0: Integer,
  )
  .returns(T::Array[Elem])
  def take(arg0); end

  Sorbet.sig(
      blk: T.proc(arg0: Elem).returns(BasicObject),
  )
  .returns(T::Array[Elem])
  Sorbet.sig.returns(Enumerator[Elem])
  def take_while(&blk); end

  Sorbet.sig.returns(T::Array[Elem])
  def to_a(); end

  Sorbet.sig.returns(T::Array[Elem])
  def to_ary(); end

  Sorbet.sig.returns(T::Array[Elem])
  def transpose(); end

  Sorbet.sig.returns(T::Array[Elem])
  def uniq(); end

  Sorbet.sig.returns(T::Array[Elem])
  def uniq!(); end

  Sorbet.sig(
      arg0: Elem,
  )
  .returns(T::Array[Elem])
  def unshift(*arg0); end

  Sorbet.sig(
      arg0: T.any(T::Range[Integer], Integer),
  )
  .returns(T::Array[Elem])
  def values_at(*arg0); end

  type_parameters(:U).sig(
      arg0: T::Array[T.type_parameter(:U)],
  )
  .returns(T::Array[[Elem, T.type_parameter(:U)]])
  def zip(*arg0); end

  Sorbet.sig(
      arg0: T::Array[Elem],
  )
  .returns(T::Array[Elem])
  def |(arg0); end

  Sorbet.sig.returns(Integer)
  def size(); end

  Sorbet.sig(
      arg0: T::Range[Integer],
  )
  .returns(T.nilable(T::Array[Elem]))
  Sorbet.sig(
      arg0: T.any(Integer, Float),
  )
  .returns(T.nilable(Elem))
  Sorbet.sig(
      arg0: Integer,
      arg1: Integer,
  )
  .returns(T.nilable(T::Array[Elem]))
  def slice(arg0, arg1=T.unsafe(nil)); end

  Sorbet.sig.returns(String)
  def to_s(); end
end
