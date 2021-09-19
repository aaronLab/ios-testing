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
    
    override func tearDown() {
        super.tearDown()
        
        // This will be called after every test.
    }
    
    func test_InitialBalanceZero() {
        XCTAssertTrue(account.balance == 0, "Balance is not zero!")
    }
    
    func test_WithdrawFunds() {
        account.deposit(50)
        try? account.withdraw(50)
        
        XCTAssertEqual(0, account.balance)
    }
    
    func test_WithdrawFromInsufficientBalance() {
        account.deposit(100)
        
        XCTAssertThrowsError(try account.withdraw(300)) { error in
            XCTAssertEqual(error as! AccountError, .insufficient)
        }
    }
    
    func test_DepositFunds() {
        account.deposit(100)
        
        XCTAssertEqual(account.balance, 100)
        XCTAssertNotEqual(account.balance, 300)
    }

}
