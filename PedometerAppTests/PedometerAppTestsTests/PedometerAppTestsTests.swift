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

    func test_StartsPedometer() {
        
        let mockPedometer = MockPedometer()
        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)
        pedometerVM.startPedometer()
        
        XCTAssertTrue(mockPedometer.started)
        
    }

}
