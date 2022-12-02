//
//  ShowEntryViewController.swift
//  JournalApp
//
//  Created by David Svensson on 2022-12-01.
//

import UIKit

class ShowEntryViewController: UIViewController {

    @IBOutlet weak var entryTextView: UITextView!
    
    var journalEntry : JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        entryTextView.text = journalEntry?.content
        
    }
    

  

}
