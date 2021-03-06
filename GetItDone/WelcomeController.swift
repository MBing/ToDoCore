//
//  ViewController.swift
//  GetItDone
//
//  Created by Martin Demiddel on 04.01.19.
//  Copyright © 2019 Martin Bing. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    let bg: UIView = {
        let view = MBGradient()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 6
        
        return view
    }()
    
    let titleLabel = MBLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(bg)
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        titleLabel.text = "Just To Do It!"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        // add the title to the bg view so it is connected to the bg and not the view
        bg.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
    }

}

