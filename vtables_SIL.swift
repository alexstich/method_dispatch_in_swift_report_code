sil_stage canonical

class Animal {
  func sleep()
  func voice()
}

@_inheritsConvenienceInitializers class Cat : Animal {
  override func voice()
}

sil_vtable Animal {
  #Animal.sleep: (Animal) -> () -> () : @vtables.Animal.sleep() -> ()	// Animal.sleep()
  #Animal.voice: (Animal) -> () -> () : @vtables.Animal.voice() -> ()	// Animal.voice()
}

sil_vtable Cat {
  #Animal.sleep: (Animal) -> () -> () : @vtables.Animal.sleep() -> () [inherited]	// Animal.sleep()
  #Animal.voice: (Animal) -> () -> () : @vtables.Cat.voice() -> () [override]	// Cat.voice()
}
