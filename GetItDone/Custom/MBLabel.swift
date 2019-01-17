//
//  MBLabel.swift
//  GetItDone
//
//  Created by Martin Demiddel on 04.01.19.
//  Copyright © 2019 Martin Bing. All rights reserved.
//

import UIKit

class MBLabel: UILabel {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(
        title: String = "Default Text",
        color: UIColor = .white,
        size: CGFloat = 16,
        frame: CGRect = .zero
        ) {
        super.init(frame: frame)
        
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.text = title
        self.textColor = color
        self.font = UIFont.systemFont(ofSize: size)
    }
}
