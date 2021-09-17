//
//  BankAppTests.swift
//  BankAppTests
//
//  Created by Aaron Lee on 2021/09/17.
//

import XCTest
@testable import BankApp

class BankAppTests: XCTestCase {

    func test_InitialBalanceZero() {
        
        let account = Account()
        
        XCTAssertTrue(account.balance == 0, "Balance is not zero!")
        
    }

}
