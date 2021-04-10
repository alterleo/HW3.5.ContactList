//
//  DetailedContact.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 08.04.2021.
//

import SwiftUI

struct DetailedContact: View {
    let person: Person
    
    var body: some View {
        VStack {
            List {
                    PersonImageLineView()
                    PhoneLineView(person: person)
                    EmailLineView(person: person)
            }
        }
        .navigationBarTitle("\(person.name) \(person.surname)")
        .backButtoned()
    }
}

struct DetailedContact_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContact(person: DataManager.getPerson(0))
    }
}

struct BackButtonedViewModifier: ViewModifier {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.blue)
                        Button("Back") { self.mode.wrappedValue.dismiss()
                        }
                    })
    }
}
extension View {
    func backButtoned() -> some View {
        ModifiedContent(content: self, modifier: BackButtonedViewModifier())
    }
}

struct PersonImageLineView: View {
    var body: some View {
        HStack() {
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 120, height: 120)
            Spacer()
        } .padding(20)
    }
}
