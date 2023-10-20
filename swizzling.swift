import UIKit
import ObjectiveC

extension UIViewController {
    
    @objc func swizzled_viewWillAppear(_ animated: Bool) {
        self.swizzled_viewWillAppear(animated)
        print("Swizzled: View Will Appear")
    }
    
    static func swizzleViewWillAppear() {
        if self != UIViewController.self {
            return
        }
        
        let originalMethod = class_getInstanceMethod(self, #selector(viewWillAppear(_:)))
        let swizzledMethod = class_getInstanceMethod(self, #selector(swizzled_viewWillAppear(_:)))
        
        method_exchangeImplementations(originalMethod!, swizzledMethod!)
    }
}

// В AppDelegate или где-то еще
UIViewController.swizzleViewWillAppear()

