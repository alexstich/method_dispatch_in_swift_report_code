class Animal {
    func sleep() {
        print("Animal is sleeping")
    }
    
    func voice() {
        print("Animal makes a sound")
    }
}

class Cat: Animal {
    override func voice() {
        print("Cat is meowing")
    }
}

let cat = Cat()
cat.sleep()


