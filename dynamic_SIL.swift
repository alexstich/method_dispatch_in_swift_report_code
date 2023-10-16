sil_stage canonical

import Builtin
import Swift
import SwiftShims

import Foundation

class DynamicClass {
  @objc func objcMethod()
  @objc dynamic func objectDynamicMethod()
  dynamic func dynamicMethod()
  @objc deinit
  init()
}

@_hasStorage @_hasInitialValue let obj: DynamicClass { get }

// obj
sil_global hidden [let] @dynamic.obj : dynamic.DynamicClass : $DynamicClass

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  alloc_global @dynamic.obj : dynamic.DynamicClass // id: %2
  %3 = global_addr @dynamic.obj : dynamic.DynamicClass : $*DynamicClass // users: %14, %11, %8, %7
  %4 = metatype $@thick DynamicClass.Type         // user: %6
  // function_ref DynamicClass.__allocating_init()
  %5 = function_ref @dynamic.DynamicClass.__allocating_init() -> dynamic.DynamicClass : $@convention(method) (@thick DynamicClass.Type) -> @owned DynamicClass // user: %6
  %6 = apply %5(%4) : $@convention(method) (@thick DynamicClass.Type) -> @owned DynamicClass // user: %7
  store %6 to %3 : $*DynamicClass                 // id: %7
  %8 = load %3 : $*DynamicClass                   // users: %9, %10
  %9 = class_method %8 : $DynamicClass, #DynamicClass.objcMethod : (DynamicClass) -> () -> (), $@convention(method) (@guaranteed DynamicClass) -> () // user: %10
  %10 = apply %9(%8) : $@convention(method) (@guaranteed DynamicClass) -> ()
  %11 = load %3 : $*DynamicClass                  // users: %12, %13
  %12 = objc_method %11 : $DynamicClass, #DynamicClass.objectDynamicMethod!foreign : (DynamicClass) -> () -> (), $@convention(objc_method) (DynamicClass) -> () // user: %13
  %13 = apply %12(%11) : $@convention(objc_method) (DynamicClass) -> ()
  %14 = load %3 : $*DynamicClass                  // users: %15, %16
  %15 = class_method %14 : $DynamicClass, #DynamicClass.dynamicMethod : (DynamicClass) -> () -> (), $@convention(method) (@guaranteed DynamicClass) -> () // user: %16
  %16 = apply %15(%14) : $@convention(method) (@guaranteed DynamicClass) -> ()
  %17 = integer_literal $Builtin.Int32, 0         // user: %18
  %18 = struct $Int32 (%17 : $Builtin.Int32)      // user: %19
  return %18 : $Int32                             // id: %19
} // end sil function 'main'

// DynamicClass.objcMethod()
sil hidden @dynamic.DynamicClass.objcMethod() -> () : $@convention(method) (@guaranteed DynamicClass) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $DynamicClass):
  debug_value %0 : $DynamicClass, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'dynamic.DynamicClass.objcMethod() -> ()'

// @objc DynamicClass.objcMethod()
sil private [thunk] @@objc dynamic.DynamicClass.objcMethod() -> () : $@convention(objc_method) (DynamicClass) -> () {
// %0                                             // users: %4, %3, %1
bb0(%0 : $DynamicClass):
  strong_retain %0 : $DynamicClass                // id: %1
  // function_ref DynamicClass.objcMethod()
  %2 = function_ref @dynamic.DynamicClass.objcMethod() -> () : $@convention(method) (@guaranteed DynamicClass) -> () // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed DynamicClass) -> () // user: %5
  strong_release %0 : $DynamicClass               // id: %4
  return %3 : $()                                 // id: %5
} // end sil function '@objc dynamic.DynamicClass.objcMethod() -> ()'

// DynamicClass.objectDynamicMethod()
sil hidden @dynamic.DynamicClass.objectDynamicMethod() -> () : $@convention(method) (@guaranteed DynamicClass) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $DynamicClass):
  debug_value %0 : $DynamicClass, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'dynamic.DynamicClass.objectDynamicMethod() -> ()'

// @objc DynamicClass.objectDynamicMethod()
sil private [thunk] @@objc dynamic.DynamicClass.objectDynamicMethod() -> () : $@convention(objc_method) (DynamicClass) -> () {
// %0                                             // users: %4, %3, %1
bb0(%0 : $DynamicClass):
  strong_retain %0 : $DynamicClass                // id: %1
  // function_ref DynamicClass.objectDynamicMethod()
  %2 = function_ref @dynamic.DynamicClass.objectDynamicMethod() -> () : $@convention(method) (@guaranteed DynamicClass) -> () // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed DynamicClass) -> () // user: %5
  strong_release %0 : $DynamicClass               // id: %4
  return %3 : $()                                 // id: %5
} // end sil function '@objc dynamic.DynamicClass.objectDynamicMethod() -> ()'

// DynamicClass.dynamicMethod()
sil hidden [dynamically_replacable] @dynamic.DynamicClass.dynamicMethod() -> () : $@convention(method) (@guaranteed DynamicClass) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $DynamicClass):
  debug_value %0 : $DynamicClass, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'dynamic.DynamicClass.dynamicMethod() -> ()'

// DynamicClass.deinit
sil hidden @dynamic.DynamicClass.deinit : $@convention(method) (@guaranteed DynamicClass) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $DynamicClass):
  debug_value %0 : $DynamicClass, let, name "self", argno 1, implicit // id: %1
  %2 = unchecked_ref_cast %0 : $DynamicClass to $Builtin.NativeObject // user: %3
  return %2 : $Builtin.NativeObject               // id: %3
} // end sil function 'dynamic.DynamicClass.deinit'

// DynamicClass.__deallocating_deinit
sil hidden @dynamic.DynamicClass.__deallocating_deinit : $@convention(method) (@owned DynamicClass) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $DynamicClass):
  debug_value %0 : $DynamicClass, let, name "self", argno 1, implicit // id: %1
  // function_ref DynamicClass.deinit
  %2 = function_ref @dynamic.DynamicClass.deinit : $@convention(method) (@guaranteed DynamicClass) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed DynamicClass) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $DynamicClass // user: %5
  dealloc_ref %4 : $DynamicClass                  // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'dynamic.DynamicClass.__deallocating_deinit'

// DynamicClass.__allocating_init()
sil hidden [exact_self_class] @dynamic.DynamicClass.__allocating_init() -> dynamic.DynamicClass : $@convention(method) (@thick DynamicClass.Type) -> @owned DynamicClass {
// %0 "$metatype"
bb0(%0 : $@thick DynamicClass.Type):
  %1 = alloc_ref $DynamicClass                    // user: %3
  // function_ref DynamicClass.init()
  %2 = function_ref @dynamic.DynamicClass.init() -> dynamic.DynamicClass : $@convention(method) (@owned DynamicClass) -> @owned DynamicClass // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned DynamicClass) -> @owned DynamicClass // user: %4
  return %3 : $DynamicClass                       // id: %4
} // end sil function 'dynamic.DynamicClass.__allocating_init() -> dynamic.DynamicClass'

// DynamicClass.init()
sil hidden @dynamic.DynamicClass.init() -> dynamic.DynamicClass : $@convention(method) (@owned DynamicClass) -> @owned DynamicClass {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $DynamicClass):
  debug_value %0 : $DynamicClass, let, name "self", argno 1, implicit // id: %1
  return %0 : $DynamicClass                       // id: %2
} // end sil function 'dynamic.DynamicClass.init() -> dynamic.DynamicClass'

sil_vtable DynamicClass {
  #DynamicClass.objcMethod: (DynamicClass) -> () -> () : @dynamic.DynamicClass.objcMethod() -> ()	// DynamicClass.objcMethod()
  #DynamicClass.dynamicMethod: (DynamicClass) -> () -> () : @dynamic.DynamicClass.dynamicMethod() -> ()	// DynamicClass.dynamicMethod()
  #DynamicClass.init!allocator: (DynamicClass.Type) -> () -> DynamicClass : @dynamic.DynamicClass.__allocating_init() -> dynamic.DynamicClass	// DynamicClass.__allocating_init()
  #DynamicClass.deinit!deallocator: @dynamic.DynamicClass.__deallocating_deinit	// DynamicClass.__deallocating_deinit
}



// Mappings from '#fileID' to '#filePath':
//   'dynamic/dynamic.swift' => 'dynamic.swift'


