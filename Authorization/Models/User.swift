//
//  User.swift
//  Authorization
//
//  Created by Егоров Михаил on 25.04.2022.
//

struct User {
    let userName: String
    let userPassword: String
    let person: Person
    
    static func getUser () -> User {
        User.init(userName: "User",
                  userPassword: "12345",
                  person: Person.getPerson())
    }
}

struct Person {
    let firstName: String
    let secondName: String
    let contacts: Contact
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPerson() -> Person {
        Person(firstName: "Mikhail", secondName: "Egorov", contacts: Contact.getContact())
    }
}

struct Contact {
    let email: String
    let phoneNumber: String
    let address: String
    
    static func getContact() -> Contact {
        Contact(email: "myEmail@google.com", phoneNumber: "9210354907", address: "Planet Earth")
    }
    
}
