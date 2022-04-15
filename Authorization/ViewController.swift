//
//  ViewController.swift
//  Authorization
//
//  Created by Егоров Михаил on 09.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //User Name and Password
    private let userName = "User"
    private let password = "12345"
    
    // I didn't need
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInVC = segue.destination as? LogInViewController else {return}
        logInVC.welcomeLabelProperty = userNameTF.text
    }

    @IBAction func logInButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(with: "Warning",
                      and: "Incorrect username or password",
                      textField: passwordTF)
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Reminder of user name", and: "Name is \(userName)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Reminder of password", and: "Password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text?.removeAll()
        passwordTF.text?.removeAll()
    }
}

    // MARK: - Private Methods
extension ViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text?.removeAll()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        }
        else {
            logInButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
    
}
