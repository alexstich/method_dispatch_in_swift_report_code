sil_stage canonical

protocol Noisable {
  var volume: Int { get }
  func makeNoise()
}

protocol Cutable {
  func makeMrrr()
}

struct Cat : Noisable, Cutable {
  @_hasStorage @_hasInitialValue var volume: Int { get set }
  func makeNoise()
  func makeMrrr()
  init()
  init(volume: Int = 1)
}

sil_witness_table hidden Cat: Noisable module test_wt {
  method #Noisable.volume!getter: <Self where Self : Noisable> (Self) -> () -> Int : @protocol witness for test_wt.Noisable.volume.getter : Swift.Int in conformance test_wt.Cat : test_wt.Noisable in test_wt	// protocol witness for Noisable.volume.getter in conformance Cat
  method #Noisable.makeNoise: <Self where Self : Noisable> (Self) -> () -> () : @protocol witness for test_wt.Noisable.makeNoise() -> () in conformance test_wt.Cat : test_wt.Noisable in test_wt	// protocol witness for Noisable.makeNoise() in conformance Cat
}

sil_witness_table hidden Cat: Cutable module test_wt {
  method #Cutable.makeMrrr: <Self where Self : Cutable> (Self) -> () -> () : @protocol witness for test_wt.Cutable.makeMrrr() -> () in conformance test_wt.Cat : test_wt.Cutable in test_wt	// protocol witness for Cutable.makeMrrr() in conformance Cat
}

