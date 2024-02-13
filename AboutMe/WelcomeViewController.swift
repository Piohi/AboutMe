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
    
    private let primaryColor = UIColor (
        red: 240/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor (
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 0.9
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "")!"
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}


