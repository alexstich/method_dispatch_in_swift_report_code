sil_stage canonical

protocol Noisable {
  func makeNoise()
}

extension Noisable {
  func makeRrrr()
  func makeNoise()
}

struct Cat : Noisable {
  func makeNoise()
  init()
}

struct Dog : Noisable {
  func makeNoise()
  init()
}

sil_witness_table hidden Cat: Noisable module test_wt {
  method #Noisable.makeNoise: <Self where Self : Noisable> (Self) -> () -> () : @protocol witness for test_wt.Noisable.makeNoise() -> () in conformance test_wt.Cat : test_wt.Noisable in test_wt    // protocol witness for Noisable.makeNoise() in conformance Cat
}

sil_witness_table hidden Dog: Noisable module test_wt {
  method #Noisable.makeNoise: <Self where Self : Noisable> (Self) -> () -> () : @protocol witness for test_wt.Noisable.makeNoise() -> () in conformance test_wt.Dog : test_wt.Noisable in test_wt    // protocol witness for Noisable.makeNoise() in conformance Dog
}



// Mappings from '#fileID' to '#filePath':
//   'test_wt/test_wt.swift' => 'test_wt.swift'


