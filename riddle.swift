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

