//
//  LineMessengerApp.swift
//  LineMessenger
//
//  Created by Rocky on 2/16/24.
//

import SwiftUI

@main
struct LineMessengerApp: App {
    @StateObject var container: DIContainer = .init(services: Services())
    
    var body: some Scene {
        WindowGroup {
            AuthenticatedView(authViewModel: .init())
                .environmentObject(container)
        }
    }
}
