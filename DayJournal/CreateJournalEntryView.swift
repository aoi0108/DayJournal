//
//  CreateJournalEntryView.swift
//  DayJournal
//
//  Created by 平松蒼惟 on 2024/10/11.
//

import SwiftUI

struct CreateJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var text : String = "Today was..."
    @State var rating : Double = 3.0
    @State var date : Date = Date()
    
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("title", text: $title)
                
                DatePicker("Date", selection: $date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(rating)))
                Slider(value: $rating, in: 1...5, step: 1)
                TextEditor(text: $text)
            
            }
            .navigationTitle("New Journal Entry")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Save"){
                        let newJournalEntry = JournalEntry(title: title, text: text, rating: rating, date: date)
                        
                        modelContext.insert(newJournalEntry)
                        dismiss()
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    CreateJournalEntryView()
}
