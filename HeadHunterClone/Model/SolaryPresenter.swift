//
//  SolaryPresenter.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 23.01.2024.
//

import Foundation

protocol ISolaryPresenter: AnyObject {
    
    func string(_ solary: Int) -> String
    
}

final class SolaryPresenter: ISolaryPresenter {
    
    private let formatter = SolaryFormatter()
    
    func string(_ solary: Int) -> String {
        let value = NSNumber(integerLiteral: solary)
        let string = self.formatter.string(from: value) ?? ""
        return string
    }
    
}

final class SolaryHourPresenter: ISolaryPresenter {
    
    private let formatter = SolaryFormatter()
    
    private let hoursPerMonth: Int
    
    init(hoursPerMonth: Int = 160) {
        self.hoursPerMonth = hoursPerMonth
    }
    
    func string(_ solary: Int) -> String {
        let hourSolary = solary / self.hoursPerMonth
        let value = NSNumber(integerLiteral: hourSolary)
        let string = self.formatter.string(from: value) ?? ""
        return string
    }
    
}
