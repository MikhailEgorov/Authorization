//
//  User.swift
//  Authorization
//
//  Created by Егоров Михаил on 25.04.2022.
//

import Foundation
struct User {
    let userName: String
    let userPassword: String
    let person: Person
    
    static func getUser () -> User {
        User.init(userName: "User",
                  userPassword: "12345",
                  person: .init(firstName: "Mikhail",
                                secondName: "Egorov",
                                contacts: .init(email: "myEmail@google.com",
                                                phoneNumber: 9830092,
                                                address: "Planet Earth")))
    }
}

struct Person {
    let firstName: String
    let secondName: String
    let contacts: Contact
}

struct Contact {
    let email: String
    let phoneNumber: Int
    let address: String
}
