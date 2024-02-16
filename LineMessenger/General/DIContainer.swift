//
//  DIContainer.swift
//  LineMessenger
//
//  Created by Rocky on 2/16/24.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    
    init(services: ServiceType) {
        self.services = services
    }
}
