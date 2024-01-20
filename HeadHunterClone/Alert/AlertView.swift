//
//  AlertView.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 20.01.2024.
//

import Foundation
import SwiftAlertView

extension SwiftAlertView: IAppAlert {
    
    func error(title: String?, message: String?) {
        let alertView = SwiftAlertView(title: title, message: message, buttonTitles: "Готово")
        alertView.backgroundImage = UIImage(named: "alert-box-error")
        alertView.show()
    }
    
    func success(title: String?, message: String?) {
        let alertView = SwiftAlertView(title: title, message: message, buttonTitles: "Готово")
        alertView.backgroundImage = UIImage(named: "alert-box-success")
        alertView.show()
    }
    
}
