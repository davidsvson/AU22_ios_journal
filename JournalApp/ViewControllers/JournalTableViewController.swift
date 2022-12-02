//
//  JournalTableViewController.swift
//  JournalApp
//
//  Created by David Svensson on 2022-12-01.
//

import UIKit

class MyBeautifulCell : UITableViewCell {
    
    @IBOutlet weak var `switch`: UISwitch!
    
    
    
}



class JournalTableViewController: UITableViewController {

    let newEntrySegueId = "addNewEntrySegue"
    let showEntrySegueId = "showEntrySegue"
    
    let journal = Journal()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        journal.add(entry: JournalEntry(content: "jag åt mat"))
        journal.add(entry: JournalEntry(content: "jag sov"))
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journal.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "journalCellId", for: indexPath)

        //cell?.switch.isOn = false
        let journalEntry = journal.entry(index: indexPath.row)
        cell.textLabel?.text = journalEntry?.date
       
        return cell
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == newEntrySegueId {
            let destinationVC = segue.destination as? NewEntryViewController
            
            destinationVC?.journal = journal
            
        } else if segue.identifier == showEntrySegueId {
            let destinatioVC = segue.destination as? ShowEntryViewController
            
            if let cell = sender as? UITableViewCell {
                if let indexPath = tableView.indexPath(for: cell) {
                    let entry = journal.entry(index: indexPath.row)
                    destinatioVC?.journalEntry = entry
                }
            }
        }
    }


}
