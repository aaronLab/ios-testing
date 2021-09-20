//
//  AlertManager.swift
//  MultipleExpectations
//
//  Created by Aaron Lee on 2021/09/20.
//

import Foundation

class AlertManager {
    
    func postAlert() {
        NotificationCenter.default.post(name: Notification.Name.alertNotification, object: self)
    }
    
}
