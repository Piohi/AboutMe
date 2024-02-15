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
    
    private let userAlex = User.exexample
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = userAlex.userName
        passwordTextField.text = userAlex.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userAlex.singIn(
            introducedUser: userNameTextField.text ?? "",
            introducedPassword: passwordTextField.text ?? ""
        )
        else {
            showAlert(
                withTitle: "Error",
                argMessage: "Incorrect data, try again", completion: {
                    self.passwordTextField.text = ""
                })
            return false
        }
        return true
    }
    
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        let tabBarVC = segue.destination as? UITabBarController
        tabBarVC?.viewControllers?.forEach { viewController in
            if let welcomVC = viewController as? WelcomeViewController {
                welcomVC.user = userAlex
            } else if let navigationVC = viewController as? UINavigationController {
                if let myInfoVC = navigationVC.topViewController as? MyInfoViewController {
                    myInfoVC.me = userAlex.person
                }
            }
        }
    }
    
    @IBAction func showNotifUserName() {
        showAlert(withTitle: "User Name",
                  argMessage: "Your user name is \(userAlex.userName)"
                  )
    }
    
    @IBAction func showNotifPassword() {
        showAlert(withTitle: "Password",
                  argMessage: "Your password is \(userAlex.password)"
                  )
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
        alert.addAction(okAction)
        present(alert,animated: true)
    }
}

