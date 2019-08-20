//
//  JYBaseLabel.swift
//  AppTest
//
//  Created by 裴雷 on 2018/11/28.
//  Copyright © 2018 CAC Inc. All rights reserved.
//

import UIKit

public class JYBaseLabel: UILabel {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
