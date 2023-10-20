import Foundation

class DynamicClass {
    @objc func objcMethod() { print("objcMethod") }
    @objc dynamic func objectDynamicMethod() { print("objectDynamicMethod") }
    dynamic func dynamicMethod() { print("dynamicMethod") }
}

let obj = DynamicClass()
obj.objcMethod()
obj.objectDynamicMethod()
obj.dynamicMethod()
