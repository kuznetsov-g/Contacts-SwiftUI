//
//  ContactListDetails.swift
//  Contacts SwiftUI
//
//  Created by Георгий Кузнецов on 27.05.2022.
//

import SwiftUI

struct ContactListDetailsView: View {
    let title: String
    let contacts: [Person]

    var body: some View {
        NavigationView {
        List(contacts, id: \.self) {
            person in
            Section(person.name + " " + person.surname) {
                HStack {
                Image(systemName: "mail.stack")
                Text(" \(person.email)")
                }
                HStack {
                Image(systemName: "phone.connection")
            Text(" \(person.phoneNumber)")
                .font(.system(size: 25))
        }
                }
        }
        .listStyle(.plain)
        .navigationBarTitle(title)
    }
    }
}
