//
//  MyBioViewController.swift
//  AboutMe
//
//  Created by Anton Godunov on 14.02.2024.
//

import UIKit

final class MyBioViewController: UIViewController {

    @IBOutlet var myBioLabel: UILabel!

    var myBio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myBioLabel.text = myBio
        view.addVerticalGradientLayer(
            topColor: UIColor(named: "primaryColor") ?? .white,
            bottomColor: UIColor(named: "secondaryColor") ?? .black
        )
    }
}
