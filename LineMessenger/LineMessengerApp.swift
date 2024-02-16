//
//  LineMessengerApp.swift
//  LineMessenger
//
//  Created by Rocky on 2/16/24.
//

import SwiftUI

@main
struct LineMessengerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var container: DIContainer = .init(services: Services())
    
    var body: some Scene {
        WindowGroup {
            AuthenticatedView(authViewModel: .init(container: container))
                .environmentObject(container)
        }
    }
}
