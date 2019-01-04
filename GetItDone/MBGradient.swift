//
//  MBGradient.swift
//  GetItDone
//
//  Created by Martin Demiddel on 04.01.19.
//  Copyright © 2019 Martin Bing. All rights reserved.
//

import UIKit

class MBGradient: UIView {
    
    var colors: [CGColor] = [
        UIColor.init(red: 100, green: 128, blue: 255).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213).cgColor
    ]
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.colors
            layer.locations = [0.0, 1.2]
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
}
