//
//  Person.swift
//  ContactList
//
//  Created by Vlad Ryabtsev on 29.12.2021.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var foulName:String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList () -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
            persons.append(person)
        }
        return persons
    }
}
