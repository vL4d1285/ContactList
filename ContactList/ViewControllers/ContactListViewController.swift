//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Vlad Ryabtsev on 29.12.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var personsList: [Person] = []
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detail", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personsList[indexPath.row]
        
        content.text = person.foulName
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow  {
            guard let contactVC = segue.destination as? ContactViewController else { return }
            contactVC.person = personsList[indexPath.row]
        }
    }
}
