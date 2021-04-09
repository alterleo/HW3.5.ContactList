//
//  NumbersView.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 08.04.2021.
//

import SwiftUI

struct NumbersView: View {
    let persons = DataManager.randomArray
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header:
                                Text("\(person.name) \(person.surname)")) {
                        PhoneLineView(person: person)
                        EmailLineView(person: person)
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
