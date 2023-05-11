//
//  luzhaApp.swift
//  luzha
//
//  Created by CEDAM05 on 11/05/23.
//

import SwiftUI

@main
struct luzhaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
