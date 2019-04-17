//
//  Double+Extensions.swift
//  BankOfEveris
//
//  Created by Leandro Roberto Medeiros on 16/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//


import Foundation

extension Double {
    var transformToCurrency: String {
        let numberFormatter = NumberFormatter()
        
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale(identifier: "pt_br")
        
        return numberFormatter.string(from: NSNumber(value: self))!
    }
}
