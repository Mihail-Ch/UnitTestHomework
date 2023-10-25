//
//  Model.swift
//  PhoneContacts
//
//  Created by Михаил Чертов on 16.10.2023.
//

protocol ContactsProtocol {
    var nameContact: String {get set}
    var phoneNumber: String {get set}
    
}

struct Contact: ContactsProtocol {
    
    var nameContact: String
    var phoneNumber: String
    
    init(nameContact: String, phoneNumber: String) {
        self.nameContact = nameContact
        self.phoneNumber = phoneNumber
    }
    
    init(nameContact: String) {
        self.init(nameContact: nameContact)
    }
    
    init(phoneContact: String) {
        self.init(phoneContact: phoneContact)
    }
}
