//
//  SolaryFormatter.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 23.01.2024.
//

import Foundation

final class SolaryFormatter: NumberFormatter {
    
    override init() {
        super.init()
        self.numberStyle = .currency
        self.currencySymbol = "₽"
        self.currencyGroupingSeparator = " "
        self.maximumFractionDigits = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
