protocol Noisable {
    func makeNoise()
}
extension Noisable {
    func makeRrrr() { print("rrrr") }
}
struct Cat: Noisable {
    func makeNoise() { print("meow") }
}
struct Dog: Noisable {
    func makeNoise() { print("woof") }
}

let animals: [Noisable] = [Cat(), Cat(), Dog(), Dog(), Cat()]

for animal in animals { animal.makeNoise() } // polymorphism
animals[0].makeRrrr()
