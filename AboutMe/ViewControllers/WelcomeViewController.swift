//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Anton Godunov on 10.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet private var userNameLabel: UILabel!
    @IBOutlet private var myName: UILabel!
    
    var user: User!
    var client: Client!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(user!)
        userNameLabel.text = "Welcome, \(user.userName)!"
        myName.text = "My name is \(client.name) \(client.lastName)."
        view.addVerticalGradientLayer(topColor: UIColor.primaryColor, bottomColor: UIColor.secondaryColor)
    }
}




