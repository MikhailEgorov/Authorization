//
//  UserInfoViewController.swift
//  Authorization
//
//  Created by Егоров Михаил on 27.04.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactsUserViewController else { return }
        contactVC.user = user
    }


}
