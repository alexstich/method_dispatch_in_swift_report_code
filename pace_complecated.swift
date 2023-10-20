/// Compare pace of the different method dispatch
import Foundation

struct PaceStructure {
    func staticDispatchMethod() -> [Int] {
        let d: Array<Int> = [90]
        return d
    }
}
class PaceClass {
    @discardableResult
    func vtableDispatchMethod() -> [Int] {
        let d: Array<Int> = [90]
        return d
    }
    @discardableResult
    @objc func vtableObjcDispatchMethod() -> [Int] {
        let d: Array<Int> = [90]
        return d
    }
    @discardableResult
    @objc dynamic func messageSendingDispatchMethod() -> [Int] {
        let d: Array<Int> = [90]
        return d
    }
}

let structure_iterations =  10000000
let class_iterations =      10000000

let structure = PaceStructure()
let paceClass = PaceClass()

do {
    let startTime = Date()
    for _ in 0...structure_iterations { structure.staticDispatchMethod() }
    let timing = Date().timeIntervalSince(startTime)
    print("Time for \(structure_iterations)x staticDispatchMethod: \(timing)s")
}

do {
    let startTime = Date()
    for _ in 0...class_iterations { paceClass.vtableDispatchMethod() }
    let timing = Date().timeIntervalSince(startTime)
    print("Time for \(class_iterations)x vtableDispatchMethod: \(timing)s")
}

do {
    let startTime = Date()
    for _ in 0...class_iterations { paceClass.vtableObjcDispatchMethod() }
    let timing = Date().timeIntervalSince(startTime)
    print("Time for \(class_iterations)x vtableObjcDispatchMethod: \(timing)s")
}

do {
    let startTime = Date()
    for _ in 0...class_iterations { paceClass.messageSendingDispatchMethod() }
    let timing = Date().timeIntervalSince(startTime)
    print("Time for \(class_iterations)x messageSendingDispatchMethod: \(timing)s")
}

// https://onlineswiftplayground.com/
//
// Swift release 5.7
//
//Time for 10000000x staticDispatchMethod: 0.0s
//Time for 10000000x vtableDispatchMethod: 0.11921191215515137s
//Time for 10000000x vtableObjcDispatchMethod: 0.12290596961975098s
//Time for 10000000x messageSendingDispatchMethod: 1.2500790357589722s


