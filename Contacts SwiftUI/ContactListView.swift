//
//  ContactListView.swift
//  Contacts SwiftUI
//
//  Created by Георгий Кузнецов on 27.05.2022.
//

import SwiftUI

struct ContactListView: View {
    let title: String
    let contacts: [Person]

    var body: some View {
        NavigationView {
        List(contacts, id: \.self) {
            person in
            NavigationLink(destination: personDetails(person: person)) {
            Text("\(person.name) \(person.surname)")
                .font(.system(size: 25))
        }
        }
        .listStyle(.plain)
        .navigationBarTitle(title)
    }
    
    }
    
}
