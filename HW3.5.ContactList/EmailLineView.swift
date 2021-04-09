//
//  EmailLineView.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 09.04.2021.
//

import SwiftUI

struct EmailLineView: View {
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text(person.email)
        }
    }
}

struct EmailLineView_Previews: PreviewProvider {
    static var previews: some View {
        EmailLineView(person: DataManager.getPerson(0))
    }
}
