//
//  MockPedometer.swift
//  PedometerAppTestsTests
//
//  Created by Aaron Lee on 2021/09/22.
//

import Foundation
@testable import PedometerAppTests

class MockPedometer: Pedometer {
    
    private (set) var started: Bool = false
    
    func start() {
        started = true
    }
    
}
