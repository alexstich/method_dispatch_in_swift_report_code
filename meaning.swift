protocol Executable {
    func execute()
}

extension Executable {
    func execute(){
        print("Have done!")
    }
}

class B: Executable {
    func execute() {
        print("Have done in another way then in the protocol!")
    }
}


let b = B()
b.execute()
