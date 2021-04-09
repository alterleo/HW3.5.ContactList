//
//  ContentView.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 08.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    let persons = DataManager.randomArray
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
