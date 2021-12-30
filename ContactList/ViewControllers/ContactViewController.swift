//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Vlad Ryabtsev on 29.12.2021.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet var phoneLabelOutlet: UILabel!
    @IBOutlet var emailLabelOutlet: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.foulName
        phoneLabelOutlet.text = "Phone: \(person.phone)"
        emailLabelOutlet.text = "Email: \(person.email)"
    }
}
