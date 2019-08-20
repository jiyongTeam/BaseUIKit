//
//  JYBaseScrollView.swift
//  AppTest
//
//  Created by 裴雷 on 2018/11/29.
//  Copyright © 2018 CAC Inc. All rights reserved.
//

import UIKit

public class JYBaseScrollView: UIScrollView{
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
