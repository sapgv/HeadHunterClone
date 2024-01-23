//
//  SettingsStorage.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 23.01.2024.
//

import Foundation

protocol ISettingsStorage: AnyObject {
    
    static var shared: ISettingsStorage { get }
    
    var solaryPerHour: Bool { get set }
    
}

extension SettingsStorage {
    
    enum Keys: String {
        case solaryPerHour
    }
    
}

final class SettingsStorage: ISettingsStorage {
    
    static let shared: ISettingsStorage = SettingsStorage()
    
    var solaryPerHour: Bool {
        get {
            let value = UserDefaults.standard.bool(forKey: Keys.solaryPerHour.rawValue)
            return value
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: Keys.solaryPerHour.rawValue)
            UserDefaults.standard.synchronize()
            NotificationCenter.default.post(name: .solaryPerHourDidChange, object: nil)
        }
    }
    
    private init() {}
    
}
