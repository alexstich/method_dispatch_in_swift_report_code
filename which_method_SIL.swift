sil_stage canonical

import Builtin
import Swift
import SwiftShims

import Foundation

class Animal {
  func makeNoise()
  func jump()
  @objc deinit
  init()
}

@_inheritsConvenienceInitializers class Cat : Animal {
  override func makeNoise()
  override func jump()
  override init()
  @objc deinit
}

@_inheritsConvenienceInitializers class Fox : Animal {
  override func makeNoise()
  override init()
  @objc deinit
}

@_hasStorage @_hasInitialValue let animals: [Animal] { get }

// animals
sil_global hidden [let] @which_method.animals : [which_method.Animal] : $Array<Animal>

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  alloc_global @which_method.animals : [which_method.Animal] // id: %2
  %3 = global_addr @which_method.animals : [which_method.Animal] : $*Array<Animal> // users: %65, %47, %45
  %4 = integer_literal $Builtin.Word, 5           // user: %6
  // function_ref _allocateUninitializedArray<A>(_:)
  %5 = function_ref @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // user: %6
  %6 = apply %5<Animal>(%4) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // users: %8, %7
  %7 = tuple_extract %6 : $(Array<Animal>, Builtin.RawPointer), 0 // user: %44
  %8 = tuple_extract %6 : $(Array<Animal>, Builtin.RawPointer), 1 // user: %9
  %9 = pointer_to_address %8 : $Builtin.RawPointer to [strict] $*Animal // users: %14, %37, %30, %23, %16
  %10 = metatype $@thick Cat.Type                 // user: %12
  // function_ref Cat.__allocating_init()
  %11 = function_ref @which_method.Cat.__allocating_init() -> which_method.Cat : $@convention(method) (@thick Cat.Type) -> @owned Cat // user: %12
  %12 = apply %11(%10) : $@convention(method) (@thick Cat.Type) -> @owned Cat // user: %13
  %13 = upcast %12 : $Cat to $Animal              // user: %14
  store %13 to %9 : $*Animal                      // id: %14
  %15 = integer_literal $Builtin.Word, 1          // user: %16
  %16 = index_addr %9 : $*Animal, %15 : $Builtin.Word // user: %21
  %17 = metatype $@thick Cat.Type                 // user: %19
  // function_ref Cat.__allocating_init()
  %18 = function_ref @which_method.Cat.__allocating_init() -> which_method.Cat : $@convention(method) (@thick Cat.Type) -> @owned Cat // user: %19
  %19 = apply %18(%17) : $@convention(method) (@thick Cat.Type) -> @owned Cat // user: %20
  %20 = upcast %19 : $Cat to $Animal              // user: %21
  store %20 to %16 : $*Animal                     // id: %21
  %22 = integer_literal $Builtin.Word, 2          // user: %23
  %23 = index_addr %9 : $*Animal, %22 : $Builtin.Word // user: %28
  %24 = metatype $@thick Fox.Type                 // user: %26
  // function_ref Fox.__allocating_init()
  %25 = function_ref @which_method.Fox.__allocating_init() -> which_method.Fox : $@convention(method) (@thick Fox.Type) -> @owned Fox // user: %26
  %26 = apply %25(%24) : $@convention(method) (@thick Fox.Type) -> @owned Fox // user: %27
  %27 = upcast %26 : $Fox to $Animal              // user: %28
  store %27 to %23 : $*Animal                     // id: %28
  %29 = integer_literal $Builtin.Word, 3          // user: %30
  %30 = index_addr %9 : $*Animal, %29 : $Builtin.Word // user: %35
  %31 = metatype $@thick Fox.Type                 // user: %33
  // function_ref Fox.__allocating_init()
  %32 = function_ref @which_method.Fox.__allocating_init() -> which_method.Fox : $@convention(method) (@thick Fox.Type) -> @owned Fox // user: %33
  %33 = apply %32(%31) : $@convention(method) (@thick Fox.Type) -> @owned Fox // user: %34
  %34 = upcast %33 : $Fox to $Animal              // user: %35
  store %34 to %30 : $*Animal                     // id: %35
  %36 = integer_literal $Builtin.Word, 4          // user: %37
  %37 = index_addr %9 : $*Animal, %36 : $Builtin.Word // user: %42
  %38 = metatype $@thick Cat.Type                 // user: %40
  // function_ref Cat.__allocating_init()
  %39 = function_ref @which_method.Cat.__allocating_init() -> which_method.Cat : $@convention(method) (@thick Cat.Type) -> @owned Cat // user: %40
  %40 = apply %39(%38) : $@convention(method) (@thick Cat.Type) -> @owned Cat // user: %41
  %41 = upcast %40 : $Cat to $Animal              // user: %42
  store %41 to %37 : $*Animal                     // id: %42
  // function_ref _finalizeUninitializedArray<A>(_:)
  %43 = function_ref @Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A] : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // user: %44
  %44 = apply %43<Animal>(%7) : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // user: %45
  store %44 to %3 : $*Array<Animal>               // id: %45
  %46 = alloc_stack [lexical] $IndexingIterator<Array<Animal>>, var, name "$animal$generator", implicit // users: %64, %63, %52, %56
  %47 = load %3 : $*Array<Animal>                 // users: %50, %48
  retain_value %47 : $Array<Animal>               // id: %48
  %49 = alloc_stack $Array<Animal>                // users: %50, %53, %52
  store %47 to %49 : $*Array<Animal>              // id: %50
  // function_ref Collection<>.makeIterator()
  %51 = function_ref @(extension in Swift):Swift.Collection< where A.Iterator == Swift.IndexingIterator<A>>.makeIterator() -> Swift.IndexingIterator<A> : $@convention(method) <τ_0_0 where τ_0_0 : Collection, τ_0_0.Iterator == IndexingIterator<τ_0_0>> (@in τ_0_0) -> @out IndexingIterator<τ_0_0> // user: %52
  %52 = apply %51<[Animal]>(%46, %49) : $@convention(method) <τ_0_0 where τ_0_0 : Collection, τ_0_0.Iterator == IndexingIterator<τ_0_0>> (@in τ_0_0) -> @out IndexingIterator<τ_0_0>
  dealloc_stack %49 : $*Array<Animal>             // id: %53
  br bb1                                          // id: %54

bb1:                                              // Preds: bb3 bb0
  %55 = alloc_stack $Optional<Animal>             // users: %60, %61, %58
  %56 = begin_access [modify] [static] %46 : $*IndexingIterator<Array<Animal>> // users: %59, %58
  // function_ref IndexingIterator.next()
  %57 = function_ref @Swift.IndexingIterator.next() -> A.Element? : $@convention(method) <τ_0_0 where τ_0_0 : Collection> (@inout IndexingIterator<τ_0_0>) -> @out Optional<τ_0_0.Element> // user: %58
  %58 = apply %57<[Animal]>(%55, %56) : $@convention(method) <τ_0_0 where τ_0_0 : Collection> (@inout IndexingIterator<τ_0_0>) -> @out Optional<τ_0_0.Element>
  end_access %56 : $*IndexingIterator<Array<Animal>> // id: %59
  %60 = load %55 : $*Optional<Animal>             // user: %62
  dealloc_stack %55 : $*Optional<Animal>          // id: %61
  switch_enum %60 : $Optional<Animal>, case #Optional.some!enumelt: bb3, case #Optional.none!enumelt: bb2 // id: %62

bb2:                                              // Preds: bb1
  destroy_addr %46 : $*IndexingIterator<Array<Animal>> // id: %63
  dealloc_stack %46 : $*IndexingIterator<Array<Animal>> // id: %64
  %65 = load %3 : $*Array<Animal>                 // user: %70
  %66 = integer_literal $Builtin.Int64, 0         // user: %67
  %67 = struct $Int (%66 : $Builtin.Int64)        // user: %70
  %68 = alloc_stack $Animal                       // users: %71, %75, %70
  // function_ref Array.subscript.getter
  %69 = function_ref @Swift.Array.subscript.getter : (Swift.Int) -> A : $@convention(method) <τ_0_0> (Int, @guaranteed Array<τ_0_0>) -> @out τ_0_0 // user: %70
  %70 = apply %69<Animal>(%68, %67, %65) : $@convention(method) <τ_0_0> (Int, @guaranteed Array<τ_0_0>) -> @out τ_0_0
  %71 = load %68 : $*Animal                       // users: %74, %72, %73
  %72 = class_method %71 : $Animal, #Animal.jump : (Animal) -> () -> (), $@convention(method) (@guaranteed Animal) -> () // user: %73
  %73 = apply %72(%71) : $@convention(method) (@guaranteed Animal) -> ()
  strong_release %71 : $Animal                    // id: %74
  dealloc_stack %68 : $*Animal                    // id: %75
  %76 = integer_literal $Builtin.Int32, 0         // user: %77
  %77 = struct $Int32 (%76 : $Builtin.Int32)      // user: %78
  return %77 : $Int32                             // id: %78

// %79                                            // users: %83, %80, %81, %82
bb3(%79 : $Animal):                               // Preds: bb1
  debug_value %79 : $Animal, let, name "animal"   // id: %80
  %81 = class_method %79 : $Animal, #Animal.makeNoise : (Animal) -> () -> (), $@convention(method) (@guaranteed Animal) -> () // user: %82
  %82 = apply %81(%79) : $@convention(method) (@guaranteed Animal) -> ()
  strong_release %79 : $Animal                    // id: %83
  br bb1                                          // id: %84
} // end sil function 'main'

// Animal.makeNoise()
sil hidden @which_method.Animal.makeNoise() -> () : $@convention(method) (@guaranteed Animal) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $Animal):
  debug_value %0 : $Animal, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'which_method.Animal.makeNoise() -> ()'

// Animal.jump()
sil hidden @which_method.Animal.jump() -> () : $@convention(method) (@guaranteed Animal) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $Animal):
  debug_value %0 : $Animal, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'which_method.Animal.jump() -> ()'

// Animal.deinit
sil hidden @which_method.Animal.deinit : $@convention(method) (@guaranteed Animal) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Animal):
  debug_value %0 : $Animal, let, name "self", argno 1, implicit // id: %1
  %2 = unchecked_ref_cast %0 : $Animal to $Builtin.NativeObject // user: %3
  return %2 : $Builtin.NativeObject               // id: %3
} // end sil function 'which_method.Animal.deinit'

// Animal.__deallocating_deinit
sil hidden @which_method.Animal.__deallocating_deinit : $@convention(method) (@owned Animal) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $Animal):
  debug_value %0 : $Animal, let, name "self", argno 1, implicit // id: %1
  // function_ref Animal.deinit
  %2 = function_ref @which_method.Animal.deinit : $@convention(method) (@guaranteed Animal) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed Animal) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $Animal // user: %5
  dealloc_ref %4 : $Animal                        // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'which_method.Animal.__deallocating_deinit'

// Animal.__allocating_init()
sil hidden [exact_self_class] @which_method.Animal.__allocating_init() -> which_method.Animal : $@convention(method) (@thick Animal.Type) -> @owned Animal {
// %0 "$metatype"
bb0(%0 : $@thick Animal.Type):
  %1 = alloc_ref $Animal                          // user: %3
  // function_ref Animal.init()
  %2 = function_ref @which_method.Animal.init() -> which_method.Animal : $@convention(method) (@owned Animal) -> @owned Animal // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned Animal) -> @owned Animal // user: %4
  return %3 : $Animal                             // id: %4
} // end sil function 'which_method.Animal.__allocating_init() -> which_method.Animal'

// Animal.init()
sil hidden @which_method.Animal.init() -> which_method.Animal : $@convention(method) (@owned Animal) -> @owned Animal {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Animal):
  debug_value %0 : $Animal, let, name "self", argno 1, implicit // id: %1
  return %0 : $Animal                             // id: %2
} // end sil function 'which_method.Animal.init() -> which_method.Animal'

// Cat.makeNoise()
sil hidden @which_method.Cat.makeNoise() -> () : $@convention(method) (@guaranteed Cat) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $Cat):
  debug_value %0 : $Cat, let, name "self", argno 1, implicit // id: %1
  %2 = integer_literal $Builtin.Word, 1           // user: %4
  // function_ref _allocateUninitializedArray<A>(_:)
  %3 = function_ref @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // user: %4
  %4 = apply %3<Any>(%2) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // users: %6, %5
  %5 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 0 // user: %17
  %6 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 1 // user: %7
  %7 = pointer_to_address %6 : $Builtin.RawPointer to [strict] $*Any // user: %14
  %8 = string_literal utf8 "meow"                 // user: %13
  %9 = integer_literal $Builtin.Word, 4           // user: %13
  %10 = integer_literal $Builtin.Int1, -1         // user: %13
  %11 = metatype $@thin String.Type               // user: %13
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %12 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %13
  %13 = apply %12(%8, %9, %10, %11) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %15
  %14 = init_existential_addr %7 : $*Any, $String // user: %15
  store %13 to %14 : $*String                     // id: %15
  // function_ref _finalizeUninitializedArray<A>(_:)
  %16 = function_ref @Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A] : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // user: %17
  %17 = apply %16<Any>(%5) : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // users: %26, %23
  // function_ref default argument 1 of print(_:separator:terminator:)
  %18 = function_ref @default argument 1 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %19
  %19 = apply %18() : $@convention(thin) () -> @owned String // users: %25, %23
  // function_ref default argument 2 of print(_:separator:terminator:)
  %20 = function_ref @default argument 2 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %21
  %21 = apply %20() : $@convention(thin) () -> @owned String // users: %24, %23
  // function_ref print(_:separator:terminator:)
  %22 = function_ref @Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> () // user: %23
  %23 = apply %22(%17, %19, %21) : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> ()
  release_value %21 : $String                     // id: %24
  release_value %19 : $String                     // id: %25
  release_value %17 : $Array<Any>                 // id: %26
  %27 = tuple ()                                  // user: %28
  return %27 : $()                                // id: %28
} // end sil function 'which_method.Cat.makeNoise() -> ()'

// _allocateUninitializedArray<A>(_:)
sil [always_inline] [_semantics "array.uninitialized_intrinsic"] @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer)

// String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
sil [always_inline] [readonly] [_semantics "string.makeUTF8"] @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String

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

// Cat.jump()
sil hidden @which_method.Cat.jump() -> () : $@convention(method) (@guaranteed Cat) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $Cat):
  debug_value %0 : $Cat, let, name "self", argno 1, implicit // id: %1
  %2 = integer_literal $Builtin.Word, 1           // user: %4
  // function_ref _allocateUninitializedArray<A>(_:)
  %3 = function_ref @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // user: %4
  %4 = apply %3<Any>(%2) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // users: %6, %5
  %5 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 0 // user: %17
  %6 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 1 // user: %7
  %7 = pointer_to_address %6 : $Builtin.RawPointer to [strict] $*Any // user: %14
  %8 = string_literal utf8 "Cat jumped!"          // user: %13
  %9 = integer_literal $Builtin.Word, 11          // user: %13
  %10 = integer_literal $Builtin.Int1, -1         // user: %13
  %11 = metatype $@thin String.Type               // user: %13
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %12 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %13
  %13 = apply %12(%8, %9, %10, %11) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %15
  %14 = init_existential_addr %7 : $*Any, $String // user: %15
  store %13 to %14 : $*String                     // id: %15
  // function_ref _finalizeUninitializedArray<A>(_:)
  %16 = function_ref @Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A] : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // user: %17
  %17 = apply %16<Any>(%5) : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // users: %26, %23
  // function_ref default argument 1 of print(_:separator:terminator:)
  %18 = function_ref @default argument 1 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %19
  %19 = apply %18() : $@convention(thin) () -> @owned String // users: %25, %23
  // function_ref default argument 2 of print(_:separator:terminator:)
  %20 = function_ref @default argument 2 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %21
  %21 = apply %20() : $@convention(thin) () -> @owned String // users: %24, %23
  // function_ref print(_:separator:terminator:)
  %22 = function_ref @Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> () // user: %23
  %23 = apply %22(%17, %19, %21) : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> ()
  release_value %21 : $String                     // id: %24
  release_value %19 : $String                     // id: %25
  release_value %17 : $Array<Any>                 // id: %26
  %27 = tuple ()                                  // user: %28
  return %27 : $()                                // id: %28
} // end sil function 'which_method.Cat.jump() -> ()'

// Cat.__allocating_init()
sil hidden [exact_self_class] @which_method.Cat.__allocating_init() -> which_method.Cat : $@convention(method) (@thick Cat.Type) -> @owned Cat {
// %0 "$metatype"
bb0(%0 : $@thick Cat.Type):
  %1 = alloc_ref $Cat                             // user: %3
  // function_ref Cat.init()
  %2 = function_ref @which_method.Cat.init() -> which_method.Cat : $@convention(method) (@owned Cat) -> @owned Cat // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned Cat) -> @owned Cat // user: %4
  return %3 : $Cat                                // id: %4
} // end sil function 'which_method.Cat.__allocating_init() -> which_method.Cat'

// Cat.init()
sil hidden @which_method.Cat.init() -> which_method.Cat : $@convention(method) (@owned Cat) -> @owned Cat {
// %0 "self"                                      // user: %2
bb0(%0 : $Cat):
  %1 = alloc_stack [lexical] $Cat, let, name "self", implicit // users: %9, %3, %2, %10, %11
  store %0 to %1 : $*Cat                          // id: %2
  %3 = load %1 : $*Cat                            // user: %4
  %4 = upcast %3 : $Cat to $Animal                // user: %6
  // function_ref Animal.init()
  %5 = function_ref @which_method.Animal.init() -> which_method.Animal : $@convention(method) (@owned Animal) -> @owned Animal // user: %6
  %6 = apply %5(%4) : $@convention(method) (@owned Animal) -> @owned Animal // user: %7
  %7 = unchecked_ref_cast %6 : $Animal to $Cat    // users: %9, %12, %8
  strong_retain %7 : $Cat                         // id: %8
  store %7 to %1 : $*Cat                          // id: %9
  destroy_addr %1 : $*Cat                         // id: %10
  dealloc_stack %1 : $*Cat                        // id: %11
  return %7 : $Cat                                // id: %12
} // end sil function 'which_method.Cat.init() -> which_method.Cat'

// Cat.deinit
sil hidden @which_method.Cat.deinit : $@convention(method) (@guaranteed Cat) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Cat):
  debug_value %0 : $Cat, let, name "self", argno 1, implicit // id: %1
  %2 = upcast %0 : $Cat to $Animal                // user: %4
  // function_ref Animal.deinit
  %3 = function_ref @which_method.Animal.deinit : $@convention(method) (@guaranteed Animal) -> @owned Builtin.NativeObject // user: %4
  %4 = apply %3(%2) : $@convention(method) (@guaranteed Animal) -> @owned Builtin.NativeObject // user: %5
  return %4 : $Builtin.NativeObject               // id: %5
} // end sil function 'which_method.Cat.deinit'

// Cat.__deallocating_deinit
sil hidden @which_method.Cat.__deallocating_deinit : $@convention(method) (@owned Cat) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $Cat):
  debug_value %0 : $Cat, let, name "self", argno 1, implicit // id: %1
  // function_ref Cat.deinit
  %2 = function_ref @which_method.Cat.deinit : $@convention(method) (@guaranteed Cat) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed Cat) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $Cat // user: %5
  dealloc_ref %4 : $Cat                           // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'which_method.Cat.__deallocating_deinit'

// Fox.makeNoise()
sil hidden @which_method.Fox.makeNoise() -> () : $@convention(method) (@guaranteed Fox) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $Fox):
  debug_value %0 : $Fox, let, name "self", argno 1, implicit // id: %1
  %2 = integer_literal $Builtin.Word, 1           // user: %4
  // function_ref _allocateUninitializedArray<A>(_:)
  %3 = function_ref @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // user: %4
  %4 = apply %3<Any>(%2) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // users: %6, %5
  %5 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 0 // user: %17
  %6 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 1 // user: %7
  %7 = pointer_to_address %6 : $Builtin.RawPointer to [strict] $*Any // user: %14
  %8 = string_literal utf8 ".. what does the fox say?" // user: %13
  %9 = integer_literal $Builtin.Word, 25          // user: %13
  %10 = integer_literal $Builtin.Int1, -1         // user: %13
  %11 = metatype $@thin String.Type               // user: %13
  // function_ref String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)
  %12 = function_ref @Swift.String.init(_builtinStringLiteral: Builtin.RawPointer, utf8CodeUnitCount: Builtin.Word, isASCII: Builtin.Int1) -> Swift.String : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %13
  %13 = apply %12(%8, %9, %10, %11) : $@convention(method) (Builtin.RawPointer, Builtin.Word, Builtin.Int1, @thin String.Type) -> @owned String // user: %15
  %14 = init_existential_addr %7 : $*Any, $String // user: %15
  store %13 to %14 : $*String                     // id: %15
  // function_ref _finalizeUninitializedArray<A>(_:)
  %16 = function_ref @Swift._finalizeUninitializedArray<A>(__owned [A]) -> [A] : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // user: %17
  %17 = apply %16<Any>(%5) : $@convention(thin) <τ_0_0> (@owned Array<τ_0_0>) -> @owned Array<τ_0_0> // users: %26, %23
  // function_ref default argument 1 of print(_:separator:terminator:)
  %18 = function_ref @default argument 1 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %19
  %19 = apply %18() : $@convention(thin) () -> @owned String // users: %25, %23
  // function_ref default argument 2 of print(_:separator:terminator:)
  %20 = function_ref @default argument 2 of Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) () -> @owned String // user: %21
  %21 = apply %20() : $@convention(thin) () -> @owned String // users: %24, %23
  // function_ref print(_:separator:terminator:)
  %22 = function_ref @Swift.print(_: Any..., separator: Swift.String, terminator: Swift.String) -> () : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> () // user: %23
  %23 = apply %22(%17, %19, %21) : $@convention(thin) (@guaranteed Array<Any>, @guaranteed String, @guaranteed String) -> ()
  release_value %21 : $String                     // id: %24
  release_value %19 : $String                     // id: %25
  release_value %17 : $Array<Any>                 // id: %26
  %27 = tuple ()                                  // user: %28
  return %27 : $()                                // id: %28
} // end sil function 'which_method.Fox.makeNoise() -> ()'

// Fox.__allocating_init()
sil hidden [exact_self_class] @which_method.Fox.__allocating_init() -> which_method.Fox : $@convention(method) (@thick Fox.Type) -> @owned Fox {
// %0 "$metatype"
bb0(%0 : $@thick Fox.Type):
  %1 = alloc_ref $Fox                             // user: %3
  // function_ref Fox.init()
  %2 = function_ref @which_method.Fox.init() -> which_method.Fox : $@convention(method) (@owned Fox) -> @owned Fox // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned Fox) -> @owned Fox // user: %4
  return %3 : $Fox                                // id: %4
} // end sil function 'which_method.Fox.__allocating_init() -> which_method.Fox'

// Fox.init()
sil hidden @which_method.Fox.init() -> which_method.Fox : $@convention(method) (@owned Fox) -> @owned Fox {
// %0 "self"                                      // user: %2
bb0(%0 : $Fox):
  %1 = alloc_stack [lexical] $Fox, let, name "self", implicit // users: %9, %3, %2, %10, %11
  store %0 to %1 : $*Fox                          // id: %2
  %3 = load %1 : $*Fox                            // user: %4
  %4 = upcast %3 : $Fox to $Animal                // user: %6
  // function_ref Animal.init()
  %5 = function_ref @which_method.Animal.init() -> which_method.Animal : $@convention(method) (@owned Animal) -> @owned Animal // user: %6
  %6 = apply %5(%4) : $@convention(method) (@owned Animal) -> @owned Animal // user: %7
  %7 = unchecked_ref_cast %6 : $Animal to $Fox    // users: %9, %12, %8
  strong_retain %7 : $Fox                         // id: %8
  store %7 to %1 : $*Fox                          // id: %9
  destroy_addr %1 : $*Fox                         // id: %10
  dealloc_stack %1 : $*Fox                        // id: %11
  return %7 : $Fox                                // id: %12
} // end sil function 'which_method.Fox.init() -> which_method.Fox'

// Fox.deinit
sil hidden @which_method.Fox.deinit : $@convention(method) (@guaranteed Fox) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Fox):
  debug_value %0 : $Fox, let, name "self", argno 1, implicit // id: %1
  %2 = upcast %0 : $Fox to $Animal                // user: %4
  // function_ref Animal.deinit
  %3 = function_ref @which_method.Animal.deinit : $@convention(method) (@guaranteed Animal) -> @owned Builtin.NativeObject // user: %4
  %4 = apply %3(%2) : $@convention(method) (@guaranteed Animal) -> @owned Builtin.NativeObject // user: %5
  return %4 : $Builtin.NativeObject               // id: %5
} // end sil function 'which_method.Fox.deinit'

// Fox.__deallocating_deinit
sil hidden @which_method.Fox.__deallocating_deinit : $@convention(method) (@owned Fox) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $Fox):
  debug_value %0 : $Fox, let, name "self", argno 1, implicit // id: %1
  // function_ref Fox.deinit
  %2 = function_ref @which_method.Fox.deinit : $@convention(method) (@guaranteed Fox) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed Fox) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $Fox // user: %5
  dealloc_ref %4 : $Fox                           // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'which_method.Fox.__deallocating_deinit'

// Collection<>.makeIterator()
sil [always_inline] @(extension in Swift):Swift.Collection< where A.Iterator == Swift.IndexingIterator<A>>.makeIterator() -> Swift.IndexingIterator<A> : $@convention(method) <τ_0_0 where τ_0_0 : Collection, τ_0_0.Iterator == IndexingIterator<τ_0_0>> (@in τ_0_0) -> @out IndexingIterator<τ_0_0>

// IndexingIterator.next()
sil [always_inline] @Swift.IndexingIterator.next() -> A.Element? : $@convention(method) <τ_0_0 where τ_0_0 : Collection> (@inout IndexingIterator<τ_0_0>) -> @out Optional<τ_0_0.Element>

// Int.init(_builtinIntegerLiteral:)
sil public_external [transparent] @Swift.Int.init(_builtinIntegerLiteral: Builtin.IntLiteral) -> Swift.Int : $@convention(method) (Builtin.IntLiteral, @thin Int.Type) -> Int {
// %0                                             // user: %2
bb0(%0 : $Builtin.IntLiteral, %1 : $@thin Int.Type):
  %2 = builtin "s_to_s_checked_trunc_IntLiteral_Int64"(%0 : $Builtin.IntLiteral) : $(Builtin.Int64, Builtin.Int1) // user: %3
  %3 = tuple_extract %2 : $(Builtin.Int64, Builtin.Int1), 0 // user: %4
  %4 = struct $Int (%3 : $Builtin.Int64)          // user: %5
  return %4 : $Int                                // id: %5
} // end sil function 'Swift.Int.init(_builtinIntegerLiteral: Builtin.IntLiteral) -> Swift.Int'

// Array.subscript.getter
sil @Swift.Array.subscript.getter : (Swift.Int) -> A : $@convention(method) <τ_0_0> (Int, @guaranteed Array<τ_0_0>) -> @out τ_0_0

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

sil_vtable Animal {
  #Animal.makeNoise: (Animal) -> () -> () : @which_method.Animal.makeNoise() -> ()	// Animal.makeNoise()
  #Animal.jump: (Animal) -> () -> () : @which_method.Animal.jump() -> ()	// Animal.jump()
  #Animal.init!allocator: (Animal.Type) -> () -> Animal : @which_method.Animal.__allocating_init() -> which_method.Animal	// Animal.__allocating_init()
  #Animal.deinit!deallocator: @which_method.Animal.__deallocating_deinit	// Animal.__deallocating_deinit
}

sil_vtable Cat {
  #Animal.makeNoise: (Animal) -> () -> () : @which_method.Cat.makeNoise() -> () [override]	// Cat.makeNoise()
  #Animal.jump: (Animal) -> () -> () : @which_method.Cat.jump() -> () [override]	// Cat.jump()
  #Animal.init!allocator: (Animal.Type) -> () -> Animal : @which_method.Cat.__allocating_init() -> which_method.Cat [override]	// Cat.__allocating_init()
  #Cat.deinit!deallocator: @which_method.Cat.__deallocating_deinit	// Cat.__deallocating_deinit
}

sil_vtable Fox {
  #Animal.makeNoise: (Animal) -> () -> () : @which_method.Fox.makeNoise() -> () [override]	// Fox.makeNoise()
  #Animal.jump: (Animal) -> () -> () : @which_method.Animal.jump() -> () [inherited]	// Animal.jump()
  #Animal.init!allocator: (Animal.Type) -> () -> Animal : @which_method.Fox.__allocating_init() -> which_method.Fox [override]	// Fox.__allocating_init()
  #Fox.deinit!deallocator: @which_method.Fox.__deallocating_deinit	// Fox.__deallocating_deinit
}



// Mappings from '#fileID' to '#filePath':
//   'which_method/which_method.swift' => 'which_method.swift'


