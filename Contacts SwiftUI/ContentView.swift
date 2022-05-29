//
//  ContentView.swift
//  Contacts SwiftUI
//
//  Created by Георгий Кузнецов on 26.05.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = DataManager().get12RandomContacts()
    var body: some View {
        TabView {
            ContactListView(title: "Contacts", contacts: contacts)
                .tabItem{
                    Image(systemName: "person")
                    Text("ContactList")
                }
            ContactListDetailsView(title: "Contacts Details", contacts: contacts)
                .tabItem{
                    Image(systemName: "person.3.sequence")
                    Text("Contacts Details")
                }
        }

}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
