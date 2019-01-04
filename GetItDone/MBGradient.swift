//
//  MBGradient.swift
//  GetItDone
//
//  Created by Martin Demiddel on 04.01.19.
//  Copyright © 2019 Martin Bing. All rights reserved.
//

import UIKit

class MBGradient: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = [UIColor.blue.cgColor, UIColor.gray.cgColor]
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
