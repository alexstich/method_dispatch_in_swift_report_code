sil_stage canonical

class Animal {
  func voice()
  final func sleep()
}

@_inheritsConvenienceInitializers class Cat : Animal {
  override func voice()
}

sil_vtable Animal {
  #Animal.voice: (Animal) -> () -> () : @devirtualization.Animal.voice() -> ()	// Animal.voice()
}

sil_vtable Cat {
  #Animal.voice: (Animal) -> () -> () : @devirtualization.Cat.voice() -> () [override]	// Cat.voice()
}
