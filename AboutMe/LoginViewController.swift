//
//  ViewController.swift
//  AboutMe
//
//  Created by Anton Godunov on 09.02.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "1"
    private let password = "1"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == user,
              passwordTextField.text == password else {
            showAlert(
                withTitle: "Error",
                argMessage: "Incorrect data, try again"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = userNameTextField.text
    }
    
    @IBAction func showNotifUserName() {
        showAlert(withTitle: "User Name", argMessage: "Your user name is \(user)")
    }
    @IBAction func showNotifPassword() {
        showAlert(withTitle: "Password", argMessage: "Your password is \(password)")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(
        withTitle title: String,
        argMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(
            okAction
        )
        present(
            alert,
            animated: true
        )
    }
}

