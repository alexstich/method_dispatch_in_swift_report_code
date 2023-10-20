class A {
    func execute(param: Int = 0) {
        print("A: \(param)")
    }
}

class B: A {
    override func execute(param: Int = 1) {
        print("B: \(param)")
    }
}

let instance: A = B()
instance.execute()

// prints
//B: 0

class Parent {
  func foo() {
      print("Parent foo() called")
  }
}

class Child: Parent {
  func foo(x: Int = 0) {
      print("Child foo() called")
  }
}

let c = Child()
c.foo()  

// prints
// "Parent foo() called"


protocol Noisable { }

extension Noisable {
    func voice() {
        print("In Protocol")
    }
}

class Cat: Noisable {
    func voice() {
        print("In Class")
    }
}

let cat: Noisable = Cat()
cat.voice() 

// prints
// In Protocol



protocol Noisable {
    func voice()
}
extension Noisable {
    func voice() {
        print("rrrr")
    }
}

func voice(animal: Noisable) {
    animal.voice()
}

class Animal: Noisable { }

class Cat: Animal {
    func voice() {
        print("meow")
    }
}

voice(animal: Cat())

// prints
// rrrr

@objc protocol Noisable: NSObjectProtocol {
    @objc dynamic func voice()
}
extension Noisable {
    dynamic func voice() {
        print("rrrr")
    }
}
func voice(animal: Noisable) {
    animal.voice()
}

class Animal: NSObject, Noisable  {
    @objc dynamic func voice() {}
}

class Cat: Animal {
    @objc dynamic override func voice() {
        print("meow")
    }
}

voice(animal: Cat())

// prints
// meow
