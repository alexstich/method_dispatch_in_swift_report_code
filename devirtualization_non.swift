
class Animal {
    func voice() {
        print("rrrr")
    }
    func sleep() {
        print("ssss")
    }
}

class Cat: Animal {
    override func voice() {
        print("meow")

    }
}

let cat = Cat()
cat.voice()
