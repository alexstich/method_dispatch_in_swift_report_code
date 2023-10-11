sil_stage canonical

import Builtin
import Swift
import SwiftShims

class A {
  func execute(param: Int = 0)
  @objc deinit
  init()
}

@_inheritsConvenienceInitializers class B : A {
  override func execute(param: Int = 1)
  override init()
  @objc deinit
}

@_hasStorage @_hasInitialValue let instance: A { get }

// instance
sil_global hidden [let] @riddle.instance : riddle.A : $A

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  alloc_global @riddle.instance : riddle.A         // id: %2
  %3 = global_addr @riddle.instance : riddle.A : $*A // users: %9, %8
  %4 = metatype $@thick B.Type                    // user: %6
  // function_ref B.__allocating_init()
  %5 = function_ref @riddle.B.__allocating_init() -> riddle.B : $@convention(method) (@thick B.Type) -> @owned B // user: %6
  %6 = apply %5(%4) : $@convention(method) (@thick B.Type) -> @owned B // user: %7
  %7 = upcast %6 : $B to $A                       // user: %8
  store %7 to %3 : $*A                            // id: %8
  %9 = load %3 : $*A                              // users: %12, %13
  // function_ref default argument 0 of A.execute(param:)
  %10 = function_ref @default argument 0 of riddle.A.execute(param: Swift.Int) -> () : $@convention(thin) () -> Int // user: %11
  %11 = apply %10() : $@convention(thin) () -> Int // user: %13
  %12 = class_method %9 : $A, #A.execute : (A) -> (Int) -> (), $@convention(method) (Int, @guaranteed A) -> () // user: %13
  %13 = apply %12(%11, %9) : $@convention(method) (Int, @guaranteed A) -> ()
  %14 = integer_literal $Builtin.Int32, 0         // user: %15
  %15 = struct $Int32 (%14 : $Builtin.Int32)      // user: %16
  return %15 : $Int32                             // id: %16
} // end sil function 'main'

// default argument 0 of A.execute(param:)
sil hidden @default argument 0 of riddle.A.execute(param: Swift.Int) -> () : $@convention(thin) () -> Int {
bb0:
  %0 = integer_literal $Builtin.Int64, 0          // user: %1
  %1 = struct $Int (%0 : $Builtin.Int64)          // user: %2
  return %1 : $Int                                // id: %2
} // end sil function 'default argument 0 of riddle.A.execute(param: Swift.Int) -> ()'

// Int.init(_builtinIntegerLiteral:)
sil public_external [transparent] @Swift.Int.init(_builtinIntegerLiteral: Builtin.IntLiteral) -> Swift.Int : $@convention(method) (Builtin.IntLiteral, @thin Int.Type) -> Int {
// %0                                             // user: %2
bb0(%0 : $Builtin.IntLiteral, %1 : $@thin Int.Type):
  %2 = builtin "s_to_s_checked_trunc_IntLiteral_Int64"(%0 : $Builtin.IntLiteral) : $(Builtin.Int64, Builtin.Int1) // user: %3
  %3 = tuple_extract %2 : $(Builtin.Int64, Builtin.Int1), 0 // user: %4
  %4 = struct $Int (%3 : $Builtin.Int64)          // user: %5
  return %4 : $Int                                // id: %5
} // end sil function 'Swift.Int.init(_builtinIntegerLiteral: Builtin.IntLiteral) -> Swift.Int'

// A.execute(param:)
sil hidden @riddle.A.execute(param: Swift.Int) -> () : $@convention(method) (Int, @guaranteed A) -> () {
// %0 "param"                                     // users: %31, %2
// %1 "self"                                      // user: %3
bb0(%0 : $Int, %1 : $A):
  debug_value %0 : $Int, let, name "param", argno 1 // id: %2
  debug_value %1 : $A, let, name "self", argno 2, implicit // id: %3
  %4 = integer_literal $Builtin.Word, 1           // user: %6
  // function_ref _allocateUninitializedArray<A>(_:)
  %5 = function_ref @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // user: %6
  %6 = apply %5<Any>(%4) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // users: %8, %7
  %7 = tuple_extract %6 : $(Array<Any>, Builtin.RawPointer), 0 // user: %58
  %8 = tuple_extract %6 : $(Array<Any>, Builtin.RawPointer), 1 // user: %9
  %9 = pointer_to_address %8 : $Builtin.RawPointer to [strict] $*Any // user: %55
  %10 = alloc_stack [lexical] $DefaultStringInterpolation // users: %48, %18, %51, %50, %25, %32, %43
  %11 = integer_literal $Builtin.Int64, 3         // user: %12
  %12 = struct $Int (%11 : $Builtin.Int64)        // user: %17
  %13 = integer_literal $Builtin.Int64, 1         // user: %14
  %14 = struct $Int (%13 : $Builtin.Int64)        // user: %17
  %15 = metatype $@thin DefaultStringInterpolation.Type // user: %17
  // function_ref DefaultStringInterpolation.init(literalCapacity:interpolationCount:)
  %16 = function_ref @Swift.DefaultStringInterpolation.init(literalCapacity: Swift.Int, interpolationCount: Swift.Int) -> Swift.DefaultStringInterpolation : $@convention(method) (Int, Int, @thin DefaultStringInterpolation.Type) -> @owned DefaultStringInterpolation // user: %17
  %17 = apply %16(%12, %14, %15) : $@convention(method) (Int, Int, @thin DefaultStringInterpolation.Type) -> @owned DefaultStringInterpolation // user: %18
  store %17 to %10 : $*DefaultStringInterpolation // id: %18
  %19 = string_literal utf8 "A: "                 // user: %24
  %20 = integer_literal $Builtin.Word, 3          // user: %24
  %21 = integer_literal $Builtin.Int1, -1         // user: %24
  %22 = metatype $@thin String.Type               // user: %24
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %23 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %24
  %24 = apply %23(%19, %20, %21, %22) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // users: %29, %27
  %25 = begin_access [modify] [static] %10 : $*DefaultStringInterpolation // users: %28, %27
  // function_ref DefaultStringInterpolation.appendLiteral(_:)
  %26 = function_ref @Swift.DefaultStringInterpolation.appendLiteral(Swift.String) -> () : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> () // user: %27
  %27 = apply %26(%24, %25) : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> ()
  end_access %25 : $*DefaultStringInterpolation   // id: %28
  release_value %24 : $String                     // id: %29
  %30 = alloc_stack $Int                          // users: %31, %36, %34
  store %0 to %30 : $*Int                         // id: %31
  %32 = begin_access [modify] [static] %10 : $*DefaultStringInterpolation // users: %35, %34
  // function_ref DefaultStringInterpolation.appendInterpolation<A>(_:)
  %33 = function_ref @Swift.DefaultStringInterpolation.appendInterpolation<A where A: Swift.CustomStringConvertible>(A) -> () : $@convention(method) <τ_0_0 where τ_0_0 : CustomStringConvertible> (@in_guaranteed τ_0_0, @inout DefaultStringInterpolation) -> () // user: %34
  %34 = apply %33<Int>(%30, %32) : $@convention(method) <τ_0_0 where τ_0_0 : CustomStringConvertible> (@in_guaranteed τ_0_0, @inout DefaultStringInterpolation) -> ()
  end_access %32 : $*DefaultStringInterpolation   // id: %35
  dealloc_stack %30 : $*Int                       // id: %36
  %37 = string_literal utf8 ""                    // user: %42
  %38 = integer_literal $Builtin.Word, 0          // user: %42
  %39 = integer_literal $Builtin.Int1, -1         // user: %42
  %40 = metatype $@thin String.Type               // user: %42
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %41 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %42
  %42 = apply %41(%37, %38, %39, %40) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // users: %47, %45
  %43 = begin_access [modify] [static] %10 : $*DefaultStringInterpolation // users: %46, %45
  // function_ref DefaultStringInterpolation.appendLiteral(_:)
  %44 = function_ref @Swift.DefaultStringInterpolation.appendLiteral(Swift.String) -> () : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> () // user: %45
  %45 = apply %44(%42, %43) : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> ()
  end_access %43 : $*DefaultStringInterpolation   // id: %46
  release_value %42 : $String                     // id: %47
  %48 = load %10 : $*DefaultStringInterpolation   // users: %54, %49
  retain_value %48 : $DefaultStringInterpolation  // id: %49
  destroy_addr %10 : $*DefaultStringInterpolation // id: %50
  dealloc_stack %10 : $*DefaultStringInterpolation // id: %51
  %52 = metatype $@thin String.Type               // user: %54
  // function_ref String.init(stringInterpolation:)
  %53 = function_ref @Swift.String.init(stringInterpolation: Swift.DefaultStringInterpolation) -> Swift.String : $@convention(method) (@owned DefaultStringInterpolation, @thin String.Type) -> @owned String // user: %54
  %54 = apply %53(%48, %52) : $@convention(method) (@owned DefaultStringInterpolation, @thin String.Type) -> @owned String // user: %56
  %55 = init_existential_addr %9 : $*Any, $String // user: %56
  store %54 to %55 : $*String                     // id: %56
  // function_ref _finalizeUninitializedArray<A>(_:)
  %57 = function_ref @Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A] : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // user: %58
  %58 = apply %57<Any>(%7) : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // users: %67, %64
  // function_ref default argument 1 of print(_:separator:terminator:)
  %59 = function_ref @default argument 1 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %60
  %60 = apply %59() : $@convention(thin) () -> @owned String // users: %66, %64
  // function_ref default argument 2 of print(_:separator:terminator:)
  %61 = function_ref @default argument 2 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %62
  %62 = apply %61() : $@convention(thin) () -> @owned String // users: %65, %64
  // function_ref print(_:separator:terminator:)
  %63 = function_ref @Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> () // user: %64
  %64 = apply %63(%58, %60, %62) : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> ()
  release_value %62 : $String                     // id: %65
  release_value %60 : $String                     // id: %66
  release_value %58 : $Array<Any>                 // id: %67
  %68 = tuple ()                                  // user: %69
  return %68 : $()                                // id: %69
} // end sil function 'riddle.A.execute(param: Swift.Int) -> ()'

// _allocateUninitializedArray<A>(_:)
sil [always_inline] [_semantics "array.uninitialized_intrinsic"] @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer)

// DefaultStringInterpolation.init(literalCapacity:interpolationCount:)
sil @Swift.DefaultStringInterpolation.init(literalCapacity: Swift.Int, interpolationCount: Swift.Int) -> Swift.DefaultStringInterpolation : $@convention(method) (Int, Int, @thin DefaultStringInterpolation.Type) -> @owned DefaultStringInterpolation

// String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
sil [always_inline] [readonly] [_semantics "string.makeUTF8"] @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String

// DefaultStringInterpolation.appendLiteral(_:)
sil @Swift.DefaultStringInterpolation.appendLiteral(Swift.String) -> () : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> ()

// DefaultStringInterpolation.appendInterpolation<A>(_:)
sil @Swift.DefaultStringInterpolation.appendInterpolation<A where A: Swift.CustomStringConvertible>(A) -> () : $@convention(method) <τ_0_0 where τ_0_0 : CustomStringConvertible> (@in_guaranteed τ_0_0, @inout DefaultStringInterpolation) -> ()

// String.init(stringInterpolation:)
sil [readonly] @Swift.String.init(stringInterpolation: Swift.DefaultStringInterpolation) -> Swift.String : $@convention(method) (@owned DefaultStringInterpolation, @thin String.Type) -> @owned String

// _finalizeUninitializedArray<A>(_:)
sil shared [readnone] [_semantics "array.finalize_intrinsic"] @Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A] : $@convention(thin) <Element> (@owned Array<Element>) -> @owned Array<Element> {
[%0: escape! v** => %r.v**, escape! v**.c*.v** => %r.v**.c*.v**]
// %0                                             // user: %2
bb0(%0 : $Array<Element>):
  %1 = alloc_stack $Array<Element>                // users: %6, %5, %4, %2
  store %0 to %1 : $*Array<Element>               // id: %2
  // function_ref Array._endMutation()
  %3 = function_ref @Swift.Array._endMutation() -> () : $@convention(method) <τ_0_0> (@inout Array<τ_0_0>) -> () // user: %4
  %4 = apply %3<Element>(%1) : $@convention(method) <τ_0_0> (@inout Array<τ_0_0>) -> ()
  %5 = load %1 : $*Array<Element>                 // user: %7
  dealloc_stack %1 : $*Array<Element>             // id: %6
  return %5 : $Array<Element>                     // id: %7
} // end sil function 'Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A]'

// default argument 1 of print(_:separator:terminator:)
sil shared @default argument 1 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String {
bb0:
  %0 = string_literal utf8 " "                    // user: %5
  %1 = integer_literal $Builtin.Word, 1           // user: %5
  %2 = integer_literal $Builtin.Int1, -1          // user: %5
  %3 = metatype $@thin String.Type                // user: %5
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %4 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %5
  %5 = apply %4(%0, %1, %2, %3) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %6
  return %5 : $String                             // id: %6
} // end sil function 'default argument 1 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> ()'

// default argument 2 of print(_:separator:terminator:)
sil shared @default argument 2 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String {
bb0:
  %0 = string_literal utf8 "\n"                   // user: %5
  %1 = integer_literal $Builtin.Word, 1           // user: %5
  %2 = integer_literal $Builtin.Int1, -1          // user: %5
  %3 = metatype $@thin String.Type                // user: %5
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %4 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %5
  %5 = apply %4(%0, %1, %2, %3) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %6
  return %5 : $String                             // id: %6
} // end sil function 'default argument 2 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> ()'

// print(_:separator:terminator:)
sil @Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> ()

// A.deinit
sil hidden @riddle.A.deinit : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  %2 = unchecked_ref_cast %0 : $A to $Builtin.NativeObject // user: %3
  return %2 : $Builtin.NativeObject               // id: %3
} // end sil function 'riddle.A.deinit'

// A.__deallocating_deinit
sil hidden @riddle.A.__deallocating_deinit : $@convention(method) (@owned A) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  // function_ref A.deinit
  %2 = function_ref @riddle.A.deinit : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $A // user: %5
  dealloc_ref %4 : $A                             // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'riddle.A.__deallocating_deinit'

// A.__allocating_init()
sil hidden [exact_self_class] @riddle.A.__allocating_init() -> riddle.A : $@convention(method) (@thick A.Type) -> @owned A {
// %0 "$metatype"
bb0(%0 : $@thick A.Type):
  %1 = alloc_ref $A                               // user: %3
  // function_ref A.init()
  %2 = function_ref @riddle.A.init() -> riddle.A : $@convention(method) (@owned A) -> @owned A // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned A) -> @owned A // user: %4
  return %3 : $A                                  // id: %4
} // end sil function 'riddle.A.__allocating_init() -> riddle.A'

// A.init()
sil hidden @riddle.A.init() -> riddle.A : $@convention(method) (@owned A) -> @owned A {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  return %0 : $A                                  // id: %2
} // end sil function 'riddle.A.init() -> riddle.A'

// default argument 0 of B.execute(param:)
sil hidden @default argument 0 of riddle.B.execute(param: Swift.Int) -> () : $@convention(thin) () -> Int {
bb0:
  %0 = integer_literal $Builtin.Int64, 1          // user: %1
  %1 = struct $Int (%0 : $Builtin.Int64)          // user: %2
  return %1 : $Int                                // id: %2
} // end sil function 'default argument 0 of riddle.B.execute(param: Swift.Int) -> ()'

// B.execute(param:)
sil hidden @riddle.B.execute(param: Swift.Int) -> () : $@convention(method) (Int, @guaranteed B) -> () {
// %0 "param"                                     // users: %31, %2
// %1 "self"                                      // user: %3
bb0(%0 : $Int, %1 : $B):
  debug_value %0 : $Int, let, name "param", argno 1 // id: %2
  debug_value %1 : $B, let, name "self", argno 2, implicit // id: %3
  %4 = integer_literal $Builtin.Word, 1           // user: %6
  // function_ref _allocateUninitializedArray<A>(_:)
  %5 = function_ref @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // user: %6
  %6 = apply %5<Any>(%4) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // users: %8, %7
  %7 = tuple_extract %6 : $(Array<Any>, Builtin.RawPointer), 0 // user: %58
  %8 = tuple_extract %6 : $(Array<Any>, Builtin.RawPointer), 1 // user: %9
  %9 = pointer_to_address %8 : $Builtin.RawPointer to [strict] $*Any // user: %55
  %10 = alloc_stack [lexical] $DefaultStringInterpolation // users: %48, %18, %51, %50, %25, %32, %43
  %11 = integer_literal $Builtin.Int64, 3         // user: %12
  %12 = struct $Int (%11 : $Builtin.Int64)        // user: %17
  %13 = integer_literal $Builtin.Int64, 1         // user: %14
  %14 = struct $Int (%13 : $Builtin.Int64)        // user: %17
  %15 = metatype $@thin DefaultStringInterpolation.Type // user: %17
  // function_ref DefaultStringInterpolation.init(literalCapacity:interpolationCount:)
  %16 = function_ref @Swift.DefaultStringInterpolation.init(literalCapacity: Swift.Int, interpolationCount: Swift.Int) -> Swift.DefaultStringInterpolation : $@convention(method) (Int, Int, @thin DefaultStringInterpolation.Type) -> @owned DefaultStringInterpolation // user: %17
  %17 = apply %16(%12, %14, %15) : $@convention(method) (Int, Int, @thin DefaultStringInterpolation.Type) -> @owned DefaultStringInterpolation // user: %18
  store %17 to %10 : $*DefaultStringInterpolation // id: %18
  %19 = string_literal utf8 "B: "                 // user: %24
  %20 = integer_literal $Builtin.Word, 3          // user: %24
  %21 = integer_literal $Builtin.Int1, -1         // user: %24
  %22 = metatype $@thin String.Type               // user: %24
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %23 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %24
  %24 = apply %23(%19, %20, %21, %22) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // users: %29, %27
  %25 = begin_access [modify] [static] %10 : $*DefaultStringInterpolation // users: %28, %27
  // function_ref DefaultStringInterpolation.appendLiteral(_:)
  %26 = function_ref @Swift.DefaultStringInterpolation.appendLiteral(Swift.String) -> () : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> () // user: %27
  %27 = apply %26(%24, %25) : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> ()
  end_access %25 : $*DefaultStringInterpolation   // id: %28
  release_value %24 : $String                     // id: %29
  %30 = alloc_stack $Int                          // users: %31, %36, %34
  store %0 to %30 : $*Int                         // id: %31
  %32 = begin_access [modify] [static] %10 : $*DefaultStringInterpolation // users: %35, %34
  // function_ref DefaultStringInterpolation.appendInterpolation<A>(_:)
  %33 = function_ref @Swift.DefaultStringInterpolation.appendInterpolation<A where A: Swift.CustomStringConvertible>(A) -> () : $@convention(method) <τ_0_0 where τ_0_0 : CustomStringConvertible> (@in_guaranteed τ_0_0, @inout DefaultStringInterpolation) -> () // user: %34
  %34 = apply %33<Int>(%30, %32) : $@convention(method) <τ_0_0 where τ_0_0 : CustomStringConvertible> (@in_guaranteed τ_0_0, @inout DefaultStringInterpolation) -> ()
  end_access %32 : $*DefaultStringInterpolation   // id: %35
  dealloc_stack %30 : $*Int                       // id: %36
  %37 = string_literal utf8 ""                    // user: %42
  %38 = integer_literal $Builtin.Word, 0          // user: %42
  %39 = integer_literal $Builtin.Int1, -1         // user: %42
  %40 = metatype $@thin String.Type               // user: %42
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %41 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %42
  %42 = apply %41(%37, %38, %39, %40) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // users: %47, %45
  %43 = begin_access [modify] [static] %10 : $*DefaultStringInterpolation // users: %46, %45
  // function_ref DefaultStringInterpolation.appendLiteral(_:)
  %44 = function_ref @Swift.DefaultStringInterpolation.appendLiteral(Swift.String) -> () : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> () // user: %45
  %45 = apply %44(%42, %43) : $@convention(method) (@guaranteed String, @inout DefaultStringInterpolation) -> ()
  end_access %43 : $*DefaultStringInterpolation   // id: %46
  release_value %42 : $String                     // id: %47
  %48 = load %10 : $*DefaultStringInterpolation   // users: %54, %49
  retain_value %48 : $DefaultStringInterpolation  // id: %49
  destroy_addr %10 : $*DefaultStringInterpolation // id: %50
  dealloc_stack %10 : $*DefaultStringInterpolation // id: %51
  %52 = metatype $@thin String.Type               // user: %54
  // function_ref String.init(stringInterpolation:)
  %53 = function_ref @Swift.String.init(stringInterpolation: Swift.DefaultStringInterpolation) -> Swift.String : $@convention(method) (@owned DefaultStringInterpolation, @thin String.Type) -> @owned String // user: %54
  %54 = apply %53(%48, %52) : $@convention(method) (@owned DefaultStringInterpolation, @thin String.Type) -> @owned String // user: %56
  %55 = init_existential_addr %9 : $*Any, $String // user: %56
  store %54 to %55 : $*String                     // id: %56
  // function_ref _finalizeUninitializedArray<A>(_:)
  %57 = function_ref @Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A] : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // user: %58
  %58 = apply %57<Any>(%7) : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // users: %67, %64
  // function_ref default argument 1 of print(_:separator:terminator:)
  %59 = function_ref @default argument 1 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %60
  %60 = apply %59() : $@convention(thin) () -> @owned String // users: %66, %64
  // function_ref default argument 2 of print(_:separator:terminator:)
  %61 = function_ref @default argument 2 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %62
  %62 = apply %61() : $@convention(thin) () -> @owned String // users: %65, %64
  // function_ref print(_:separator:terminator:)
  %63 = function_ref @Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> () // user: %64
  %64 = apply %63(%58, %60, %62) : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> ()
  release_value %62 : $String                     // id: %65
  release_value %60 : $String                     // id: %66
  release_value %58 : $Array<Any>                 // id: %67
  %68 = tuple ()                                  // user: %69
  return %68 : $()                                // id: %69
} // end sil function 'riddle.B.execute(param: Swift.Int) -> ()'

// B.__allocating_init()
sil hidden [exact_self_class] @riddle.B.__allocating_init() -> riddle.B : $@convention(method) (@thick B.Type) -> @owned B {
// %0 "$metatype"
bb0(%0 : $@thick B.Type):
  %1 = alloc_ref $B                               // user: %3
  // function_ref B.init()
  %2 = function_ref @riddle.B.init() -> riddle.B : $@convention(method) (@owned B) -> @owned B // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned B) -> @owned B // user: %4
  return %3 : $B                                  // id: %4
} // end sil function 'riddle.B.__allocating_init() -> riddle.B'

// B.init()
sil hidden @riddle.B.init() -> riddle.B : $@convention(method) (@owned B) -> @owned B {
// %0 "self"                                      // user: %2
bb0(%0 : $B):
  %1 = alloc_stack [lexical] $B, let, name "self", implicit // users: %9, %3, %2, %10, %11
  store %0 to %1 : $*B                            // id: %2
  %3 = load %1 : $*B                              // user: %4
  %4 = upcast %3 : $B to $A                       // user: %6
  // function_ref A.init()
  %5 = function_ref @riddle.A.init() -> riddle.A : $@convention(method) (@owned A) -> @owned A // user: %6
  %6 = apply %5(%4) : $@convention(method) (@owned A) -> @owned A // user: %7
  %7 = unchecked_ref_cast %6 : $A to $B           // users: %9, %12, %8
  strong_retain %7 : $B                           // id: %8
  store %7 to %1 : $*B                            // id: %9
  destroy_addr %1 : $*B                           // id: %10
  dealloc_stack %1 : $*B                          // id: %11
  return %7 : $B                                  // id: %12
} // end sil function 'riddle.B.init() -> riddle.B'

// B.deinit
sil hidden @riddle.B.deinit : $@convention(method) (@guaranteed B) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $B):
  debug_value %0 : $B, let, name "self", argno 1, implicit // id: %1
  %2 = upcast %0 : $B to $A                       // user: %4
  // function_ref A.deinit
  %3 = function_ref @riddle.A.deinit : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %4
  %4 = apply %3(%2) : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %5
  return %4 : $Builtin.NativeObject               // id: %5
} // end sil function 'riddle.B.deinit'

// B.__deallocating_deinit
sil hidden @riddle.B.__deallocating_deinit : $@convention(method) (@owned B) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $B):
  debug_value %0 : $B, let, name "self", argno 1, implicit // id: %1
  // function_ref B.deinit
  %2 = function_ref @riddle.B.deinit : $@convention(method) (@guaranteed B) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed B) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $B // user: %5
  dealloc_ref %4 : $B                             // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'riddle.B.__deallocating_deinit'

// Array._endMutation()
sil shared [_semantics "array.end_mutation"] @Swift.Array._endMutation() -> () : $@convention(method) <Element> (@inout Array<Element>) -> () {
[%0: noescape! **]
// %0                                             // users: %9, %1
bb0(%0 : $*Array<Element>):
  %1 = struct_element_addr %0 : $*Array<Element>, #Array._buffer // user: %2
  %2 = struct_element_addr %1 : $*_ArrayBuffer<Element>, #_ArrayBuffer._storage // user: %3
  %3 = struct_element_addr %2 : $*_BridgeStorage<__ContiguousArrayStorageBase>, #_BridgeStorage.rawValue // user: %4
  %4 = load %3 : $*Builtin.BridgeObject           // user: %5
  %5 = end_cow_mutation %4 : $Builtin.BridgeObject // user: %6
  %6 = struct $_BridgeStorage<__ContiguousArrayStorageBase> (%5 : $Builtin.BridgeObject) // user: %7
  %7 = struct $_ArrayBuffer<Element> (%6 : $_BridgeStorage<__ContiguousArrayStorageBase>) // user: %8
  %8 = struct $Array<Element> (%7 : $_ArrayBuffer<Element>) // user: %9
  store %8 to %0 : $*Array<Element>               // id: %9
  %10 = tuple ()                                  // user: %11
  return %10 : $()                                // id: %11
} // end sil function 'Swift.Array._endMutation() -> ()'

sil_vtable A {
  #A.execute: (A) -> (Int) -> () : @riddle.A.execute(param: Swift.Int) -> ()	// A.execute(param:)
  #A.init!allocator: (A.Type) -> () -> A : @riddle.A.__allocating_init() -> riddle.A	// A.__allocating_init()
  #A.deinit!deallocator: @riddle.A.__deallocating_deinit	// A.__deallocating_deinit
}

sil_vtable B {
  #A.execute: (A) -> (Int) -> () : @riddle.B.execute(param: Swift.Int) -> () [override]	// B.execute(param:)
  #A.init!allocator: (A.Type) -> () -> A : @riddle.B.__allocating_init() -> riddle.B [override]	// B.__allocating_init()
  #B.deinit!deallocator: @riddle.B.__deallocating_deinit	// B.__deallocating_deinit
}



// Mappings from '#fileID' to '#filePath':
//   'riddle/riddle.swift' => 'riddle.swift'


