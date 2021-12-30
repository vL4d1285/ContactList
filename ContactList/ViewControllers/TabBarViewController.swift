//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Vlad Ryabtsev on 29.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let detailVC = viewControllers?.last as? DetailViewController else { return }
                
        let personslist = Person.getPersonList()
        contactListVC.personsList = personslist
        detailVC.personsList = personslist
    }
    
    
}
