//
//  ContentView.swift
//  DayJournal
//
//  Created by 平松蒼惟 on 2024/10/04.
//

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false
   
    var body: some View {
        NavigationStack{
            List(journalEntries){ listedJournalEntry in
                NavigationLink(destination: EditJournalEntryView(editingJournalEntry: listedJournalEntry)){
                    JournalEntryRowVIew(rowJournalEntry: listedJournalEntry)
                }
          
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
            .toolbar {
  
                Button(action: {

                    showCreateView = true
                }) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            .sheet(isPresented: $showCreateView){
                CreateJournalEntryView()
            }
            
        }
       
    }
}



#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}

