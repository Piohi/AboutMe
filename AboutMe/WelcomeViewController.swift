//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Anton Godunov on 10.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var greeatingEmoji: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName!)!"
        greeatingEmoji.text = "👋"
    }
}


