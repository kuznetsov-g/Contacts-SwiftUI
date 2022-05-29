//
//  personDetails.swift
//  Contacts SwiftUI
//
//  Created by Георгий Кузнецов on 29.05.2022.
//

import SwiftUI

struct personDetails: View {
    let person: Person
    var body: some View {
        Image(systemName: "mail.stack")
            .resizable()
            .frame(width: 200, height: 200)
        
        VStack(alignment: .leading) {
        Text(person.name + " " + person.surname)
            .font(.largeTitle)
        Text("email: \(person.email)")
                .font(.system(size: 25))
        Text("phone: \(person.phoneNumber)")
                .font(.system(size: 25))
        }
        
        Spacer()
    }
}
