//
//  JYBaseButton.swift
//  AppTest
//
//  Created by 裴雷 on 2018/11/28.
//  Copyright © 2018 CAC Inc. All rights reserved.
//

import UIKit

public class JYBaseButton: UIButton {

    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
