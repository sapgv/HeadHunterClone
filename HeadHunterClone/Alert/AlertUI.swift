//
//  AlertUI.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 20.01.2024.
//

import UIKit

final class AlertUI: IAppAlert {
    
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func error(title: String?, message: String?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
         
        let attributedString = NSAttributedString(string: title ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        
        alert.setValue(attributedString, forKey: "attributedTitle")
        
        alert.addAction(UIAlertAction(title: "Готово", style: .cancel, handler: nil))
         
        viewController?.present(alert, animated: true)
        
    }
    
    func success(title: String?, message: String?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
         
        alert.addAction(UIAlertAction(title: "Готово", style: .cancel, handler: nil))
         
        viewController?.present(alert, animated: true)
        
    }
    
}
