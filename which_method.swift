class Animal {
    func makeNoise() { }
}

class Cat: Animal {
    override func makeNoise() { print("meow") }
}

class Fox: Animal {
    override func makeNoise() { print(".. what does the fox say?") }
}

let animals: [Animal] = [Cat(), Cat(), Fox(), Fox(), Cat()]

for animal in animals { animal.makeNoise() }
