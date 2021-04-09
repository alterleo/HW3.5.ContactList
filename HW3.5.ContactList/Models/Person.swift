//
//  Person.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 08.04.2021.
//

class Person: Identifiable {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    init(name: String, surname: String, email: String, phone: String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.phone = phone
    }
}
