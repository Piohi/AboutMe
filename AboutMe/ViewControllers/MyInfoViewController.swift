//
//  MyInfoViewController.swift
//  AboutMe
//
//  Created by Anton Godunov on 13.02.2024.
//

import UIKit

final class MyInfoViewController: UIViewController {
    
    @IBOutlet var avatar: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departamentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var me: Client!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let myBioVC = segue.destination as? MyBioViewController
        myBioVC?.myBio = me.bio
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.layer.cornerRadius = avatar.frame.height / 2
        avatar.image = UIImage(named: me.avatar)
        nameLabel.text = me.name
        lastNameLabel.text = me.lastName
        companyLabel.text = me.company
        departamentLabel.text = me.departament
        positionLabel.text = me.position
        view.addVerticalGradientLayer(
            topColor: UIColor.primaryColor,
            bottomColor: UIColor.secondaryColor
        )
        navigationItem.title = me.returnfullName()
    }
}
