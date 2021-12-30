//
//  DataManager.swift
//  ContactList
//
//  Created by Vlad Ryabtsev on 29.12.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "Samuel", "Jack", "Joseph", "Harry", "Jacob",
        "Thomas", "Charlie", "Oscar", "James", "William"
    ]
    let surnames = [
        "Smith", "Brown", "Taylor", "Walker", "Harris",
        "Davis", "Lewis", "King", "Young", "Moore"
    ]
    let phones = [
        "+1(4826)363-66-513", "+1(209)593-89-581",
        "+1(530)577-83-150", "+1(3635)312-35-028",
        "+1(449)433-10-258", "+1(969)952-37-575",
        "+1(3437)253-59-520", "+1(0686)461-70-971",
        "+1(6439)227-68-759", "+1(40)265-73-746"
    ]
    let emails = [
        "o@outlook.com", "hr6zdl@yandex.ru", "kaft93x@outlook.com",
        "dcu@yandex.ru", "19dn@outlook.com", "pa5h@mail.ru",
        "281av0@gmail.com", "8edmfh@outlook.com", "sfn13i@mail.ru",
        "g0orc3x1@outlook.com"
    ] 
}
