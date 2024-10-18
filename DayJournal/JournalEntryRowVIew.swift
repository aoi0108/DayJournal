//
//  JournalEntryRowVIew.swift
//  DayJournal
//
//  Created by 平松蒼惟 on 2024/10/08.
//

import SwiftUI

struct JournalEntryRowVIew: View {

    let rowJournalEntry : JournalEntry
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(rowJournalEntry.title)
                    .bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            
            HStack{
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
                
                
            }
            .font(.caption)
        }
    }
}

#Preview {
    List{
        JournalEntryRowVIew(rowJournalEntry:  JournalEntry(title: "Great Gold Day!", text: "I found a nice pot of gold, I'm rich I tell ya!!", rating: 5, date: Date())
        )
    }
}
