//
//  AppAlert.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 20.01.2024.
//

import Foundation

protocol IAppAlert: AnyObject {
    
    func error(title: String?, message: String?)
    
    func error(_ error: Error)
    
    func success(title: String?, message: String?)
    
}

extension IAppAlert {
    
    func error(title: String? = "Ошибка", message: String? = nil) {
        self.error(title: title, message: message)
    }
    
    func error(_ error: Error) {
        self.error(message: error.localizedDescription)
    }
    
    func success(title: String? = "Успешно", message: String? = nil) {
        self.success(title: title, message: message)
    }
    
}
