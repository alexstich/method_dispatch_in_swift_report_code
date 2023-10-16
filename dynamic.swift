import Foundation

class DynamicClass {
    @objc func objcMethod() {}
    @objc dynamic func objectDynamicMethod() {}
    dynamic func dynamicMethod() {}
}

let obj = DynamicClass()
obj.objcMethod()
obj.objectDynamicMethod()
obj.dynamicMethod()
