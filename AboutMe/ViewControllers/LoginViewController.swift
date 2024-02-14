//
//  ViewController.swift
//  AboutMe
//
//  Created by Anton Godunov on 09.02.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let userAlex = User.exexample
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userAlex.authorization(introducedUser: userNameTextField.text ?? "", introducedPassword: passwordTextField.text ?? "")
             else {
            showAlert(
                withTitle: "Error",
                argMessage: "Incorrect data, try again", completion: {
                    self.passwordTextField.text = ""
                }, needAutofill: {
                    self.userNameTextField.text = self.userAlex.userName
                    self.passwordTextField.text = self.userAlex.password
                })
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.user = userAlex
    }
    
    @IBAction func showNotifUserName() {
        showAlert(withTitle: "User Name", argMessage: "Your user name is \(userAlex.userName)", needAutofill: {
            self.userNameTextField.text = self.userAlex.userName
        })
    }
    @IBAction func showNotifPassword() {
        showAlert(withTitle: "Password", argMessage: "Your password is \(userAlex.password)", needAutofill: {
            self.passwordTextField.text = self.userAlex.password
        })
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(
        withTitle title: String,
        argMessage message: String,
        completion: (() -> Void)? = nil,
        needAutofill: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            completion?()
        }
        if let needAutofill {
            let autofill = UIAlertAction(title: "Заполнить", style: .default) { _ in
                needAutofill()
            }
            alert.addAction(autofill)
        }
        alert.addAction(okAction)
        present(alert,animated: true)
    }
}

