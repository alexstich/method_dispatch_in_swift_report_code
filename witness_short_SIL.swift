sil_stage canonical

protocol Noisable {
  func makeNoise()
}

struct Cat : Noisable {
  func makeNoise()
  init()
}

class Dog : Noisable {
  func makeNoise()
  @objc deinit
  init()
}

sil_vtable Dog {
  #Dog.makeNoise: (Dog) -> () -> () : @test_wt.Dog.makeNoise() -> ()	// Dog.makeNoise()
  #Dog.init!allocator: (Dog.Type) -> () -> Dog : @test_wt.Dog.__allocating_init() -> test_wt.Dog	// Dog.__allocating_init()
  #Dog.deinit!deallocator: @test_wt.Dog.__deallocating_deinit	// Dog.__deallocating_deinit
}

sil_witness_table hidden Cat: Noisable module test_wt {
  method #Noisable.makeNoise: <Self where Self : Noisable> (Self) -> () -> () : @protocol witness for test_wt.Noisable.makeNoise() -> () in conformance test_wt.Cat : test_wt.Noisable in test_wt	// protocol witness for Noisable.makeNoise() in conformance Cat
}

sil_witness_table hidden Dog: Noisable module test_wt {
  method #Noisable.makeNoise: <Self where Self : Noisable> (Self) -> () -> () : @protocol witness for test_wt.Noisable.makeNoise() -> () in conformance test_wt.Dog : test_wt.Noisable in test_wt	// protocol witness for Noisable.makeNoise() in conformance Dog
}
