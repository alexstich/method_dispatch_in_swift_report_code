protocol Noisable {
    func makeNoise()
}

struct Cat: Noisable {
    func makeNoise() { print("meow") }
}

struct Dog: Noisable {
    func makeNoise() { print("woof") }
}

let animals: [Noisable] = [Cat(), Cat(), Dog(), Dog(), Cat()]

for animal in animals { animal.makeNoise() } // polymorphism

