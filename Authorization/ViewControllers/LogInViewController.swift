//
//  LogInViewController.swift
//  Authorization
//
//  Created by Егоров Михаил on 11.04.2022.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLabelProperty = User.getUser().person.firstName
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeLabelProperty)"
    }
    
}