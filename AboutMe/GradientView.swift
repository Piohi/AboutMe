//
//  GradientView.swift
//  AboutMe
//
//  Created by Anton Godunov on 10.02.2024.
//

import UIKit

class GradientView: UIView {
    private let gradientLayer = CAGradientLayer()
    
    override init (frame: CGRect) {
        super .init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient ()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews ()
        gradientLayer.frame = bounds
    }
    
    private func setupGradient() {
        self.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.blue.cgColor]
        self.alpha = 0.5
    }
}
