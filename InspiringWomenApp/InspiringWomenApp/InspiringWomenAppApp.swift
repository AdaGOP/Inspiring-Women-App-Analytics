//
//  InspiringWomenAppApp.swift
//  InspiringWomenApp
//
//  Created by khoirunnisa' rizky noor fatimah on 09/09/21.
//

import SwiftUI

@main
struct InspiringWomenAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
