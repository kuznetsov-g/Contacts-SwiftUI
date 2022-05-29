//
//  DataManager.swift
//  Contacts SwiftUI
//
//  Created by Георгий Кузнецов on 27.05.2022.
//

import SwiftUI

struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
}

struct DataManager {
    let names = [
                 "Jacob",
                 "Emily",
                 "Michael",
                 "Emma",
                 "Joshua",
                 "Madison",
                 "Matthew",
                 "Olivia",
                 "Ethan",
                 "Hannah"
                ]
     
     let surnames = ["Smith",
                     "Johnson",
                     "Williams",
                     "Jones",
                     "Brown",
                     "Davis",
                     "Miller",
                     "Wilson",
                     "Moore",
                     "Taylor",
                     "Anderson"
                     ]
    
    
    var email : String {
        let randomNum = Int.random(in: 5...10)
        let letters = "abcdefghijklmnopqrstuvwxyz0123456789"
        let emailBody = String((0..<randomNum).map{ _ in letters.randomElement()! })
        return (emailBody+"@mail.ru")
    }
    
    func get12RandomContacts() -> [Person] {
        var contacts : [Person] = []
        while contacts.count < 12 {
            contacts += [Person(name: names.randomElement() ?? "Tim",
                                surname: surnames.randomElement() ?? "Cook",
                                phoneNumber: "+1-800-\(Int.random(in: 1000000...99999999))",
                                email: email)
                        ]
        }
        return contacts
    }
}



