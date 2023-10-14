import Foundation

class Animal {
    func makeNoise() { }
    func jump() { }	
}

class Cat: Animal {
    override func makeNoise() { print("meow") }
    override func jump() { print("Cat jumped!") }
}

class Fox: Animal {
    override func makeNoise() { print(".. what does the fox say?") }
}

let animals: [Animal] = [Cat(), Cat(), Fox(), Fox(), Cat()]

for animal in animals { animal.makeNoise() }
animals[0].jump()
