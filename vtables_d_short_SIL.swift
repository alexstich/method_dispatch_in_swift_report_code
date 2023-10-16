class Animal {
  final func sleep()
  func go()
}

@_inheritsConvenienceInitializers class Cat : Animal {
  override func go()
}

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  // function_ref Animal.sleep()
  %10 = function_ref @vtables_d.Animal.sleep() -> () : $@convention(method) (@guaranteed Animal) -> () // user: %11
} // end sil function 'main'

sil_vtable Animal {
  #Animal.go: (Animal) -> () -> () : @vtables_d.Animal.go() -> ()	// Animal.go()
}

sil_vtable Cat {
  #Animal.go: (Animal) -> () -> () : @vtables_d.Cat.go() -> () [override]	// Cat.go()
}
