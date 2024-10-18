//
//  JournalEntry.swift
//  DayJournal
//
//  Created by 平松蒼惟 on 2024/10/08.
//

import Foundation
import SwiftData

@Model
final class JournalEntry{
    var title: String = ""
    var text : String = ""
    var rating : Double = 1.0
    var date : Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
    
}

//let journalEntries : [JournalEntry] = [
//    JournalEntry(title: "Great Gold Day!", text: "I found a nice pot of gold, I'm rich I tell ya!!", rating: 5, date: Date()),
//    JournalEntry(title: "Headache", text: "I woke up with a headache", rating: 2, date: Date.now.addingTimeInterval(-3 * 24 * 60 * 60)),
//    JournalEntry(title: "My App is Live", text: "My app is live in App Store", rating: 4, date:Date.now.addingTimeInterval(-7 * 24 * 60 * 60))
//]
