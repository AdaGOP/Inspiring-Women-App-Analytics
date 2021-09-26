//
//  InspiringWomenAppApp.swift
//  InspiringWomenApp
//
//  Created by khoirunnisa' rizky noor fatimah on 09/09/21.
//

import SwiftUI

@main
struct InspiringWomenAppApp: App {
    let persistenceController = PersistenceController.preview

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
