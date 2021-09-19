//
//  BankAppTests.swift
//  BankAppTests
//
//  Created by Aaron Lee on 2021/09/17.
//

import XCTest
@testable import BankApp

class BankAppTests: XCTestCase {
    
    private var account: Account!
    
    override func setUp() {
        super.setUp()
        
        account = Account()
    }

    func test_InitialBalanceZero() {
        XCTAssertTrue(account.balance == 0, "Balance is not zero!")
    }
    
    func test_DepositFunds() {
        account.deposit(100)
        
        XCTAssertEqual(account.balance, 100)
        XCTAssertNotEqual(account.balance, 300)
    }

}
