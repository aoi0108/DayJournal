//
//  DayJournalApp.swift
//  DayJournal
//
//  Created by 平松蒼惟 on 2024/10/04.
//

import SwiftUI
import SwiftData

@main
struct DayJournalApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            JournalEntry.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    
    var body: some Scene {
        WindowGroup {
            JournalEntriesListView()
        }
        .modelContainer(sharedModelContainer)
    }
}
