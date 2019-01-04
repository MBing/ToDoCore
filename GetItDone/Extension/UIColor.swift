//
//  UIColor.swift
//  GetItDone
//
//  Created by Martin Demiddel on 04.01.19.
//  Copyright © 2019 Martin Bing. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var blueZero: UIColor {
        return UIColor.init(rgb: 0x64E4FF)
    }
    static var blueOne: UIColor {
        return UIColor.init(rgb: 0x3A7BD5)
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            // if you don't add alpha here it will go for the convenience init, which expects Int iso CGFloat
            alpha: 1.0
        )
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
