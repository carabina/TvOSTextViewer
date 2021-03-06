//
//  FadedTextView.swift
//  Pods
//
//  Created by David Cordero on 15.02.17.
//
//

import UIKit


class FadedTextView: UITextView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let maskLayer = CALayer()
        maskLayer.frame = bounds
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: bounds.origin.x, y:0, width: bounds.width, height: bounds.height)
        gradientLayer.colors = [UIColor.clear.cgColor,
                                UIColor.white.cgColor,
                                UIColor.white.cgColor,
                                UIColor.clear.cgColor]
        gradientLayer.locations = [0.0, 0.05, 0.90, 1.0]
        
        maskLayer.addSublayer(gradientLayer)
        self.layer.mask = maskLayer
    }
}
