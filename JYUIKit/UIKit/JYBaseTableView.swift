//
//  JYBaseTableView.swift
//  AppTest
//
//  Created by 裴雷 on 2018/11/29.
//  Copyright © 2018 CAC Inc. All rights reserved.
//

import UIKit

public class JYBaseTableView: UITableView {
    
    override public init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
