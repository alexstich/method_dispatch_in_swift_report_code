sil_stage canonical

class Animal {
  func voice()
  func sleep()
}

@_inheritsConvenienceInitializers class Cat : Animal {
  override func voice()
}

sil_vtable Animal {
  #Animal.voice: (Animal) -> () -> () : @devirtualization_non.Animal.voice() -> ()	// Animal.voice()
  #Animal.sleep: (Animal) -> () -> () : @devirtualization_non.Animal.sleep() -> ()	// Animal.sleep()
}

sil_vtable Cat {
  #Animal.voice: (Animal) -> () -> () : @devirtualization_non.Cat.voice() -> () [override]	// Cat.voice()
  #Animal.sleep: (Animal) -> () -> () : @devirtualization_non.Animal.sleep() -> () [inherited]	// Animal.sleep()
}
