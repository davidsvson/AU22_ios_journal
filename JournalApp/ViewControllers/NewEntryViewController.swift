//
//  NewEntryViewController.swift
//  JournalApp
//
//  Created by David Svensson on 2022-12-01.
//

import UIKit

class NewEntryViewController: UIViewController {

    @IBOutlet weak var entryTExtView: UITextView!
    
    var journal : Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        
        if let entryText = entryTExtView.text {
            let entry = JournalEntry(content: entryText)
            journal?.add(entry: entry)
           // dismiss(animated: true)
            navigationController?.popViewController(animated: true)
        }
        
        
    }
    
   

}
