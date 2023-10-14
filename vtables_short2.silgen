class Animal {
  func sleep()
  func go()
}

@_inheritsConvenienceInitializers class Cat : Animal {
  override func go()
}

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  %10 = class_method %9 : $Animal, #Animal.sleep : (Animal) -> () -> (), $@convention(method) (@guaranteed Animal) -> () // user: %11
  %11 = apply %10(%9) : $@convention(method) (@guaranteed Animal) -> ()
} // end sil function 'main'

sil_vtable Animal {
  #Animal.sleep: (Animal) -> () -> () : @vtables.Animal.sleep() -> ()	// Animal.sleep()
  #Animal.go: (Animal) -> () -> () : @vtables.Animal.go() -> ()	// Animal.go()
}

sil_vtable Cat {
  #Animal.sleep: (Animal) -> () -> () : @vtables.Animal.sleep() -> () [inherited]	// Animal.sleep()
  #Animal.go: (Animal) -> () -> () : @vtables.Cat.go() -> () [override]	// Cat.go()
}
