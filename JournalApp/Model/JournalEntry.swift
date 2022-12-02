//
//  JournalEntry.swift
//  JournalApp
//
//  Created by David Svensson on 2022-12-01.
//

import Foundation

class JournalEntry {
    var content : String
    private var unformatedDate : Date
    private let dateFormatter = DateFormatter()
    
    //computed property ( ser ut som en variabel men fungerar som en funktion)
    var date : String {
        return dateFormatter.string(from: unformatedDate)
    }
        
    init(content: String) {
        self.content = content
        self.unformatedDate = Date()
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
    
    init(content: String, date: Date) {
        self.content = content
        self.unformatedDate = date
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
    
    
    
}
