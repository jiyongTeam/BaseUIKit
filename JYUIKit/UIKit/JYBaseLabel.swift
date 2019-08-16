//
//  JYBaseLabel.swift
//  AppTest
//
//  Created by 裴雷 on 2018/11/28.
//  Copyright © 2018 CAC Inc. All rights reserved.
//

import UIKit

class JYBaseLabel: UILabel {

}

extension JYBaseLabel {
    
    /// 添加中线
    func addCenterLine(lineColor:UIColor) {
        let centerLine = JYUIModel.createView(bgColor: lineColor)
        self.addSubview(centerLine)
        let vd:[String:UIView] = ["centerLine":centerLine]
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|[centerLine]|", options: [], metrics: nil, views: vd))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[centerLine(1)]", options: [], metrics: nil, views: vd))
        centerLine.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
