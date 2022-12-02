//
//  Journal.swift
//  JournalApp
//
//  Created by David Svensson on 2022-12-01.
//

import Foundation


class Journal {
    private var entries = [JournalEntry]()
    
    var count : Int {
        return entries.count
    }
    
    func add(entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index < entries.count {
            return entries[index]
        }
        
        return nil
    }
}
