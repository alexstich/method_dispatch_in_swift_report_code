protocol Noisable {
    var volume: Int { get }
    func makeNoise()
}
protocol Cutable {
    func makeMrrr()
}
struct Cat: Noisable, Cutable {
    var volume: Int = 1
    func makeNoise() { print("meow") }
    func makeMrrr() { print("mrrr") }
}
struct Dog: Noisable {
    var volume: Int = 6
    func makeNoise() { print("woof") }
}

let animals: [Noisable] = [Cat(), Cat(), Dog(), Dog(), Cat()]

for animal in animals { animal.makeNoise() }

