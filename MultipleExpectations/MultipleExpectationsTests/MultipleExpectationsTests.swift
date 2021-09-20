//
//  MultipleExpectationsTests.swift
//  MultipleExpectationsTests
//
//  Created by Aaron Lee on 2021/09/20.
//

import XCTest
@testable import MultipleExpectations

class MultipleExpectationsTests: XCTestCase {

    func test_generates_two_notifications() {
        
        let alertManager = AlertManager()
        
        let exp = expectation(forNotification: Notification.Name.alertNotification,
                              object: alertManager)
        
        exp.expectedFulfillmentCount = 2
        
        alertManager.postAlert()
        alertManager.postAlert()
        
        wait(for: [exp], timeout: 2.0)
        
    }

}
