//
//  UserDefaults + Extensions.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 23.01.2024.
//

//import Foundation
//
//@propertyWrapper
//struct UserDefault<Value> {
//    
//    let key: String
//    
//    let defaultValue: Value
//    
//    var container: UserDefaults = .standard
//    
//    var wrappedValue: Value {
//        get {
//            return container.object(forKey: key) as? Value ?? defaultValue
//        }
//        set {
//            if let optional = newValue as? AnyOptional, optional.isNil {
//                container.removeObject(forKey: key)
//            }
//            else {
//                container.setValue(newValue, forKey: key)
//                container.synchronize()
//            }
//        }
//        
//    }
//    
//}
//
//extension UserDefaults {
//
//    @UserDefault(key: "solaryPerHour", defaultValue: false)
//    static var solaryPerHour: Bool
//    
//}
//
//
