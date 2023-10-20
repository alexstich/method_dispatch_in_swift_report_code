sil_stage canonical

import Builtin
import Swift
import SwiftShims

class Parent {
  func foo()
  @objc deinit
  init()
}

@_hasStorage @_hasInitialValue let c: Parent { get }

// c
sil_global hidden [let] @one_class.c : one_class.Parent : $Parent

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  alloc_global @one_class.c : one_class.Parent        // id: %2
  %3 = global_addr @one_class.c : one_class.Parent : $*Parent // users: %8, %7
  %4 = metatype $@thick Parent.Type               // user: %6
  // function_ref Parent.__allocating_init()
  %5 = function_ref @one_class.Parent.__allocating_init() -> one_class.Parent : $@convention(method) (@thick Parent.Type) -> @owned Parent // user: %6
  %6 = apply %5(%4) : $@convention(method) (@thick Parent.Type) -> @owned Parent // user: %7
  store %6 to %3 : $*Parent                       // id: %7
  %8 = load %3 : $*Parent                         // users: %9, %10
  %9 = class_method %8 : $Parent, #Parent.foo : (Parent) -> () -> (), $@convention(method) (@guaranteed Parent) -> () // user: %10
  %10 = apply %9(%8) : $@convention(method) (@guaranteed Parent) -> ()
  %11 = integer_literal $Builtin.Int32, 0         // user: %12
  %12 = struct $Int32 (%11 : $Builtin.Int32)      // user: %13
  return %12 : $Int32                             // id: %13
} // end sil function 'main'

// Parent.foo()
sil hidden @one_class.Parent.foo() -> () : $@convention(method) (@guaranteed Parent) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $Parent):
  debug_value %0 : $Parent, let, name "self", argno 1, implicit // id: %1
  %2 = integer_literal $Builtin.Word, 1           // user: %4
  // function_ref _allocateUninitializedArray<A>(_:)
  %3 = function_ref @Swift._allocateUninitializedArray<A>(Builtin.Word) -> ([A], Builtin.RawPointer) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // user: %4
  %4 = apply %3<Any>(%2) : $@convention(thin) <τ_0_0> (Builtin.Word) -> (@owned Array<τ_0_0>, Builtin.RawPointer) // users: %6, %5
  %5 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 0 // user: %17
  %6 = tuple_extract %4 : $(Array<Any>, Builtin.RawPointer), 1 // user: %7
  %7 = pointer_to_address %6 : $Builtin.RawPointer to [strict] $*Any // user: %14
  %8 = string_literal utf8 "Parent foo() called"  // user: %13
  %9 = integer_literal $Builtin.Word, 19          // user: %13
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
} // end sil function 'one_class.Parent.foo() -> ()'

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

// Parent.deinit
sil hidden @one_class.Parent.deinit : $@convention(method) (@guaranteed Parent) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Parent):
  debug_value %0 : $Parent, let, name "self", argno 1, implicit // id: %1
  %2 = unchecked_ref_cast %0 : $Parent to $Builtin.NativeObject // user: %3
  return %2 : $Builtin.NativeObject               // id: %3
} // end sil function 'one_class.Parent.deinit'

// Parent.__deallocating_deinit
sil hidden @one_class.Parent.__deallocating_deinit : $@convention(method) (@owned Parent) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $Parent):
  debug_value %0 : $Parent, let, name "self", argno 1, implicit // id: %1
  // function_ref Parent.deinit
  %2 = function_ref @one_class.Parent.deinit : $@convention(method) (@guaranteed Parent) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed Parent) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $Parent // user: %5
  dealloc_ref %4 : $Parent                        // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'one_class.Parent.__deallocating_deinit'

// Parent.__allocating_init()
sil hidden [exact_self_class] @one_class.Parent.__allocating_init() -> one_class.Parent : $@convention(method) (@thick Parent.Type) -> @owned Parent {
// %0 "$metatype"
bb0(%0 : $@thick Parent.Type):
  %1 = alloc_ref $Parent                          // user: %3
  // function_ref Parent.init()
  %2 = function_ref @one_class.Parent.init() -> one_class.Parent : $@convention(method) (@owned Parent) -> @owned Parent // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned Parent) -> @owned Parent // user: %4
  return %3 : $Parent                             // id: %4
} // end sil function 'one_class.Parent.__allocating_init() -> one_class.Parent'

// Parent.init()
sil hidden @one_class.Parent.init() -> one_class.Parent : $@convention(method) (@owned Parent) -> @owned Parent {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Parent):
  debug_value %0 : $Parent, let, name "self", argno 1, implicit // id: %1
  return %0 : $Parent                             // id: %2
} // end sil function 'one_class.Parent.init() -> one_class.Parent'

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

sil_vtable Parent {
  #Parent.foo: (Parent) -> () -> () : @one_class.Parent.foo() -> ()	// Parent.foo()
  #Parent.init!allocator: (Parent.Type) -> () -> Parent : @one_class.Parent.__allocating_init() -> one_class.Parent	// Parent.__allocating_init()
  #Parent.deinit!deallocator: @one_class.Parent.__deallocating_deinit	// Parent.__deallocating_deinit
}



// Mappings from '#fileID' to '#filePath':
//   'one_class/one_class.swift' => 'one_class.swift'


