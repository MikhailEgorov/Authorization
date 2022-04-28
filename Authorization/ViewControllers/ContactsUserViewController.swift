//
//  ContactsUserViewController.swift
//  Authorization
//
//  Created by Егоров Михаил on 28.04.2022.
//

import UIKit

class ContactsUserViewController: UIViewController {

    @IBOutlet var userEmailLabel: UILabel!
    @IBOutlet var userPhoneLabel: UILabel!
    @IBOutlet var userAddressLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userEmailLabel.text = user.person.contacts.email
        userPhoneLabel.text = user.person.contacts.phoneNumber
        userAddressLabel.text = user.person.contacts.address
    }
    

}
