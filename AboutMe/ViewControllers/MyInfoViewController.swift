//
//  MyInfoViewController.swift
//  AboutMe
//
//  Created by Anton Godunov on 13.02.2024.
//

import UIKit

final class MyInfoViewController: UIViewController {
    
    @IBOutlet var avatar: UIImageView!
    
    
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
        avatar.layer.cornerRadius = avatar.frame.height / 2
        avatar.image = UIImage(named: "avatar")
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    
    override func viewWillLayoutSubviews() {
    }
    
}
