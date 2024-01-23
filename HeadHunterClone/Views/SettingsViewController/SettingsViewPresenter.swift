//
//  SettingsViewPresenter.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 23.01.2024.
//

import Foundation

protocol ISettingsViewPresenter: AnyObject {
    
    var view: ISettingsViewController? { get set }
    
    var showSolaryPerHour: Bool { get set }
}

final class SettingsViewPresenter: ISettingsViewPresenter {
    
    weak var view: ISettingsViewController?
    
    private let settingsStorage: ISettingsStorage
    
    init(settingsStorage: ISettingsStorage = SettingsStorage.shared) {
        self.settingsStorage = settingsStorage
    }
    
    var showSolaryPerHour: Bool {
        get {
            self.settingsStorage.solaryPerHour
        }
        set {
            self.settingsStorage.solaryPerHour = newValue
        }
    }
    
}
