//
//  PhoneContact.swift
//  PhoneContacts
//
//  Created by Михаил Чертов on 23.10.2023.
//

import Foundation

public class PhoneContact {
    
    var contacts: [UInt: ContactsProtocol] = [:]
    var idContact: UInt = 0
    
    //Print
    func printContact() {
        for (k, v)in contacts {
            print("id: \(k) - contact: \(v.nameContact), number: \(v.phoneNumber)")
        }
    }
    
    //Add
    func addContact(name: String, number: String) {
        idContact += 1
        contacts.updateValue(Contact(nameContact: name, phoneNumber: number), forKey: idContact)
    }
    
    //Edit
    func editPhoneContact(id: UInt, phoneNUmber: String) {
        contacts.updateValue(Contact(phoneContact: phoneNUmber), forKey: id)
    }
    
    func editNameContact(id: UInt, nameContact: String) {
        contacts.updateValue(Contact(nameContact: nameContact), forKey: id)
    }
   
    //Remove
    func removeContact(id: UInt) {
        contacts.removeValue(forKey: id)
    }
    
}
