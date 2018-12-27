//
//  Round Buttons.swift
//  Calculator
//
//  Created by Jorge Elias Blanco Santonja on 26/12/18.
//  Copyright © 2018 Jorge Elias Blanco Santonja. All rights reserved.
//
import UIKit

@IBDesignable
class RoundButtons: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
            didSet{
            self.layer.borderColor = borderColor.cgColor
            }
    }
    
}
