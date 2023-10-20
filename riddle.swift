class A {
    func execute(param: Int = 123) {
        print("A: \(param)")
    }

}

class B: A {
    override func execute(param: Int = 456) {
        print("B: \(param)")
    }
}

let instance: A = B()
instance.execute()

