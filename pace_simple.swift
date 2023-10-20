/// Compare pace of the different method dispatch
import Foundation

struct PaceStructure {
    func staticDispatchMethod() -> Int {
        return 14
    }
}
class PaceClass {
    @discardableResult
    func vtableDispatchMethod() -> Int {
        return 14
    }
    
    @discardableResult
    @objc func vtableObjcDispatchMethod() -> Int {
        return 14
    }
    
    @discardableResult
    @objc dynamic func messageSendingDispatchMethod() -> Int {
        return 14
    }
}

let structure_iterations =  100000000
let class_iterations =      100000000

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
//Time for 100000000x staticDispatchMethod: 0.00000095367431640s
//Time for 100000000x vtableDispatchMethod: 0.15030908584594727s
//Time for 100000000x vtableObjcDispatchMethod: 0.1610349416732788s
//Time for 100000000x messageSendingDispatchMethod: 0.24019300937652588s



