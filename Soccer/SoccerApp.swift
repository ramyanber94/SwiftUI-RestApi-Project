//
//  SoccerApp.swift
//  Soccer
//
//  Created by ramy on 2022-01-05.
//

import SwiftUI

@main
struct SoccerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
