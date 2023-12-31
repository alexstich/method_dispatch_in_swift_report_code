sil_stage canonical

import Builtin
import Swift
import SwiftShims

class A {
  func A()
  func B()
  @objc deinit
  init()
}

@_inheritsConvenienceInitializers class B : A {
  override func B()
  override init()
  @objc deinit
}

@_hasStorage @_hasInitialValue let b: B { get }

// b
sil_global hidden [let] @test.b : test.B : $B

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  alloc_global @test.b : test.B                  // id: %2
  %3 = global_addr @test.b : test.B : $*B        // users: %8, %7
  %4 = metatype $@thick B.Type                    // user: %6
  // function_ref B.__allocating_init()
  %5 = function_ref @test.B.__allocating_init() -> test.B : $@convention(method) (@thick B.Type) -> @owned B // user: %6
  %6 = apply %5(%4) : $@convention(method) (@thick B.Type) -> @owned B // user: %7
  store %6 to %3 : $*B                            // id: %7
  %8 = load %3 : $*B                              // users: %9, %10
  %9 = class_method %8 : $B, #B.B : (B) -> () -> (), $@convention(method) (@guaranteed B) -> () // user: %10
  %10 = apply %9(%8) : $@convention(method) (@guaranteed B) -> ()
  %11 = integer_literal $Builtin.Int32, 0         // user: %12
  %12 = struct $Int32 (%11 : $Builtin.Int32)      // user: %13
  return %12 : $Int32                             // id: %13
} // end sil function 'main'

// A.A()
sil hidden @test.A.A() -> () : $@convention(method) (@guaranteed A) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'test.A.A() -> ()'

// A.B()
sil hidden @test.A.B() -> () : $@convention(method) (@guaranteed A) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'test.A.B() -> ()'

// A.deinit
sil hidden @test.A.deinit : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  %2 = unchecked_ref_cast %0 : $A to $Builtin.NativeObject // user: %3
  return %2 : $Builtin.NativeObject               // id: %3
} // end sil function 'test.A.deinit'

// A.__deallocating_deinit
sil hidden @test.A.__deallocating_deinit : $@convention(method) (@owned A) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  // function_ref A.deinit
  %2 = function_ref @test.A.deinit : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $A // user: %5
  dealloc_ref %4 : $A                             // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'test.A.__deallocating_deinit'

// A.__allocating_init()
sil hidden [exact_self_class] @test.A.__allocating_init() -> test.A : $@convention(method) (@thick A.Type) -> @owned A {
// %0 "$metatype"
bb0(%0 : $@thick A.Type):
  %1 = alloc_ref $A                               // user: %3
  // function_ref A.init()
  %2 = function_ref @test.A.init() -> test.A : $@convention(method) (@owned A) -> @owned A // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned A) -> @owned A // user: %4
  return %3 : $A                                  // id: %4
} // end sil function 'test.A.__allocating_init() -> test.A'

// A.init()
sil hidden @test.A.init() -> test.A : $@convention(method) (@owned A) -> @owned A {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $A):
  debug_value %0 : $A, let, name "self", argno 1, implicit // id: %1
  return %0 : $A                                  // id: %2
} // end sil function 'test.A.init() -> test.A'

// B.B()
sil hidden @test.B.B() -> () : $@convention(method) (@guaranteed B) -> () {
// %0 "self"                                      // user: %1
bb0(%0 : $B):
  debug_value %0 : $B, let, name "self", argno 1, implicit // id: %1
  %2 = tuple ()                                   // user: %3
  return %2 : $()                                 // id: %3
} // end sil function 'test.B.B() -> ()'

// B.__allocating_init()
sil hidden [exact_self_class] @test.B.__allocating_init() -> test.B : $@convention(method) (@thick B.Type) -> @owned B {
// %0 "$metatype"
bb0(%0 : $@thick B.Type):
  %1 = alloc_ref $B                               // user: %3
  // function_ref B.init()
  %2 = function_ref @test.B.init() -> test.B : $@convention(method) (@owned B) -> @owned B // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned B) -> @owned B // user: %4
  return %3 : $B                                  // id: %4
} // end sil function 'test.B.__allocating_init() -> test.B'

// B.init()
sil hidden @test.B.init() -> test.B : $@convention(method) (@owned B) -> @owned B {
// %0 "self"                                      // user: %2
bb0(%0 : $B):
  %1 = alloc_stack [lexical] $B, let, name "self", implicit // users: %9, %3, %2, %10, %11
  store %0 to %1 : $*B                            // id: %2
  %3 = load %1 : $*B                              // user: %4
  %4 = upcast %3 : $B to $A                       // user: %6
  // function_ref A.init()
  %5 = function_ref @test.A.init() -> test.A : $@convention(method) (@owned A) -> @owned A // user: %6
  %6 = apply %5(%4) : $@convention(method) (@owned A) -> @owned A // user: %7
  %7 = unchecked_ref_cast %6 : $A to $B           // users: %9, %12, %8
  strong_retain %7 : $B                           // id: %8
  store %7 to %1 : $*B                            // id: %9
  destroy_addr %1 : $*B                           // id: %10
  dealloc_stack %1 : $*B                          // id: %11
  return %7 : $B                                  // id: %12
} // end sil function 'test.B.init() -> test.B'

// B.deinit
sil hidden @test.B.deinit : $@convention(method) (@guaranteed B) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $B):
  debug_value %0 : $B, let, name "self", argno 1, implicit // id: %1
  %2 = upcast %0 : $B to $A                       // user: %4
  // function_ref A.deinit
  %3 = function_ref @test.A.deinit : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %4
  %4 = apply %3(%2) : $@convention(method) (@guaranteed A) -> @owned Builtin.NativeObject // user: %5
  return %4 : $Builtin.NativeObject               // id: %5
} // end sil function 'test.B.deinit'

// B.__deallocating_deinit
sil hidden @test.B.__deallocating_deinit : $@convention(method) (@owned B) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $B):
  debug_value %0 : $B, let, name "self", argno 1, implicit // id: %1
  // function_ref B.deinit
  %2 = function_ref @test.B.deinit : $@convention(method) (@guaranteed B) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed B) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $B // user: %5
  dealloc_ref %4 : $B                             // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function 'test.B.__deallocating_deinit'

sil_vtable A {
  #A.A: (A) -> () -> () : @test.A.A() -> ()	// A.A()
  #A.B: (A) -> () -> () : @test.A.B() -> ()	// A.B()
  #A.init!allocator: (A.Type) -> () -> A : @test.A.__allocating_init() -> test.A	// A.__allocating_init()
  #A.deinit!deallocator: @test.A.__deallocating_deinit	// A.__deallocating_deinit
}

sil_vtable B {
  #A.A: (A) -> () -> () : @test.A.A() -> () [inherited]	// A.A()
  #A.B: (A) -> () -> () : @test.B.B() -> () [override]	// B.B()
  #A.init!allocator: (A.Type) -> () -> A : @test.B.__allocating_init() -> test.B [override]	// B.__allocating_init()
  #B.deinit!deallocator: @test.B.__deallocating_deinit	// B.__deallocating_deinit
}



// Mappings from '#fileID' to '#filePath':
//   'test/test.swift' => 'test.swift'


