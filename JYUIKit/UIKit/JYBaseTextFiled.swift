//
//  JYBaseTextFiled.swift
//  AppTest
//
//  Created by 裴雷 on 2018/11/29.
//  Copyright © 2018 CAC Inc. All rights reserved.
//

import UIKit

public class JYBaseTextFiled: UITextField {
    
    /// 初始化
    /// 统一通用配置
    /// - Parameter frame: 
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.tintColor = UIColor.init(hexString: "#FD914B")
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
