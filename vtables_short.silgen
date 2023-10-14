sil_stage canonical

class Animal {
  func sleep()
  func go()
  @objc deinit
  init()
}

@_inheritsConvenienceInitializers class Cat : Animal {
  override func go()
  override init()
  @objc deinit
}

sil_vtable Animal {
  #Animal.sleep: (Animal) -> () -> () : @vtables.Animal.sleep() -> ()	// Animal.sleep()
  #Animal.go: (Animal) -> () -> () : @vtables.Animal.go() -> ()	// Animal.go()
  #Animal.init!allocator: (Animal.Type) -> () -> Animal : @vtables.Animal.__allocating_init() -> vtables.Animal	// Animal.__allocating_init()
  #Animal.deinit!deallocator: @vtables.Animal.__deallocating_deinit	// Animal.__deallocating_deinit
}

sil_vtable Cat {
  #Animal.sleep: (Animal) -> () -> () : @vtables.Animal.sleep() -> () [inherited]	// Animal.sleep()
  #Animal.go: (Animal) -> () -> () : @vtables.Cat.go() -> () [override]	// Cat.go()
  #Animal.init!allocator: (Animal.Type) -> () -> Animal : @vtables.Cat.__allocating_init() -> vtables.Cat [override]	// Cat.__allocating_init()
  #Cat.deinit!deallocator: @vtables.Cat.__deallocating_deinit	// Cat.__deallocating_deinit
}
