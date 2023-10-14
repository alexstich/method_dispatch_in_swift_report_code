class Animal {
    final func sleep() {
        print("Animal is sleeping")
    }
    
    func go() {
        print("Animal is going")
    }
}

class Cat: Animal {
    override func go() {
        print("Cat is going")
    }
}

let cat = Cat()
cat.sleep()


