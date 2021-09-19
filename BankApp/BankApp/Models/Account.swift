//
//  Account.swift
//  BankApp
//
//  Created by Aaron Lee on 2021/09/17.
//

import Foundation

struct Account {
    var balance: Double = 0.0
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    
    mutating func withdraw(_ amount: Double) throws {
        let amount = abs(amount)
        
        if amount > balance {
            throw AccountError.withdraw
        }
        
        balance -= amount
        
        print("Success! The balanceis $\(balance) now.")
    }
    
    enum AccountError: Error {
        case withdraw
    }
    
}
