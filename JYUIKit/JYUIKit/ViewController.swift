//
//  ViewController.swift
//  JYUIKit
//
//  Created by 张冬 on 2019/8/16.
//  Copyright © 2019 张冬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let lab = JYUIModel.creatLabe(text: "1233")
        lab.backgroundColor = UIColor.red
        let field = JYUIModel.createField()
        field.borderStyle = .roundedRect
        self.view.addSubview(lab) ; self.view.addSubview(field)
        let vd: [String: UIView] = ["lab": lab , "field": field]
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-100-[lab]", options: [], metrics: nil, views: vd))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "[field]-50-|", options: [], metrics: nil, views: vd))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[lab(50,field)]", options: [], metrics: nil, views: vd))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[field]", options: [], metrics: nil, views: vd))
        field.leadingAnchor.constraint(equalTo: lab.trailingAnchor, constant: 10).isActive = true
    }


}

