//
//  PedometerViewModel.swift
//  PedometerAppTests
//
//  Created by Aaron Lee on 2021/09/22.
//

import Foundation
import CoreMotion

class PedometerViewModel {
    
    var pedometer: Pedometer
    
    init(pedometer: Pedometer) {
        self.pedometer = pedometer
    }
    
    func startPedometer() {
        pedometer.start()
    }
    
}
