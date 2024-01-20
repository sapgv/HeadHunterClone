//
//  JDropDownAlert + AppAlert.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 20.01.2024.
//

import Foundation

extension JDropDownAlert: IAppAlert {
    
    func error(title: String?, message: String?) {
        self.alertWith(title ?? "", message: message, backgroundColor: .systemRed)
    }
    
    func success(title: String?, message: String?) {
        self.alertWith(title ?? "", message: message, backgroundColor: .systemGreen)
    }
    
    
    
    
}
