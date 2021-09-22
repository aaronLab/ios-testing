//
//  PedometerAppTestsTests.swift
//  PedometerAppTestsTests
//
//  Created by Aaron Lee on 2021/09/22.
//

import XCTest
import CoreMotion
@testable import PedometerAppTests

class PedometerAppTestsTests: XCTestCase {

    func test_CMPedometer_LoadingHistorialDate() {
        
        let now = Date()
        let then = now.addingTimeInterval(-1000)
        var data: CMPedometerData?
        let exp = expectation(description: "Pedometer query returns")
        
        let pedometer = CMPedometer()
        pedometer.queryPedometerData(from: now, to: then) { pedometerData, error in
            
            data = pedometerData
            exp.fulfill()
            
        }
        
        wait(for: [exp], timeout: 1.0)
        
        XCTAssertNotNil(data)
        
        if let steps = data?.numberOfSteps {
            XCTAssertTrue(steps.intValue > 0)
        }
        
    }

}
