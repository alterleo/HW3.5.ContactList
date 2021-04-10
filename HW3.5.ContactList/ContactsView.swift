//
//  ContactsView.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 08.04.2021.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: DetailedContact(
                                    person: person)) {
                    Text("\(person.name) \(person.surname)")
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons:DataManager.randomArray)
    }
}
