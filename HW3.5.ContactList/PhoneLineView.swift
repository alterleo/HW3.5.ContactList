//
//  PhoneLineView.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 09.04.2021.
//

import SwiftUI

struct PhoneLineView: View {
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text(person.phone)
        }
    }
}

struct PhoneLineView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneLineView(person: DataManager.getPerson(0))
    }
}
