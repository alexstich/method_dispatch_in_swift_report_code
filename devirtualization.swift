protocol Flyable {
    func fly()
}

struct Bird: Flyable {
    func fly() {
        print("Bird is flying")
    }
}

func makeFlyable() -> Flyable {
    return Bird()
}

let flyable = makeFlyable()
flyable.fly()  // Can be devirtualized if the compiler knows `makeFlyable` always returns `Bird`
