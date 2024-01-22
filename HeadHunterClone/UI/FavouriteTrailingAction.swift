//
//  FavouriteTrailingAction.swift
//  MVPArchitecture
//
//  Created by Grigory Sapogov on 09.01.2024.
//

import UIKit

final class AddFavouriteTrailingAction: UIContextualAction {
    
    convenience init(_ completion: (() -> Void)?) {
        self.init(style: .normal, title: "Добавить", handler: { _, _, completionHandler in
            completion?()
            completionHandler(true)
        })
        self.backgroundColor = .systemGreen
    }
    
}

final class RemoveFavouriteTrailingAction: UIContextualAction {
    
    convenience init(_ completion: (() -> Void)?) {
        self.init(style: .destructive, title: "Удалить", handler: { _, _, completionHandler in
            completion?()
            completionHandler(true)
        })
        self.backgroundColor = .systemRed
    }
    
}
