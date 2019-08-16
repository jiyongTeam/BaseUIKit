//
//  JYUIModel.swift
//  rtb
//
//  Created by admin on 2018/4/3.
//  Copyright © 2018年 rtb.jiyong.com. All rights reserved.
//

import UIKit
/**
 *  快速创建基本控件
 */
public class JYUIModel: NSObject {
    //MARK: UILable
    /**
     *  快速创建Lab,默认只支持layout，默认显示一行，默认自动撑满
     *  @param  text 显示的内容
     *  @param  font 文字大小
     *  @param  textColor 文字的颜色
     *  @param  textAlignment 文字对齐方式,默认居左
     *  return  JYBaseLabel
     */
    static func creatLabe(text: String? , font: UIFont , textColor: UIColor , textAlignment: NSTextAlignment = .left) -> JYBaseLabel {
        let lab = JYBaseLabel()
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.text = text
        lab.sizeToFit()
        lab.textAlignment = textAlignment
        lab.font = font
        lab.textColor = textColor
        return lab
    }

    //MARK: 按钮
    /// 创建按钮(文本),默认只支持layout
    ///
    /// - Parameters:
    ///   - font: 文本大小
    ///   - textColor: 文本颜色
    ///   - titleStr: 文本
    ///   - backgroundColor: 背景色
    /// - Returns: JYBaseButton
    static func createBtn(font: UIFont = UIFont.systemFont(ofSize: 14), textColor: UIColor = UIColor.white, titleStr: String? = nil , backgroundColor: UIColor = UIColor.clear) -> JYBaseButton{
        let btn = JYBaseButton(type: .custom)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle(titleStr, for: .normal)
        btn.titleLabel?.font = font
        btn.setTitleColor(textColor, for: .normal)
        btn.backgroundColor = backgroundColor
        return btn
    }

    //MARK: UIImageView
    /// 快速创建 图片
    ///
    /// - Parameter name: 图像名称字符串
    /// - Returns: JYBaseImageView
    static func createImageView(name: String? = nil) -> JYBaseImageView {
        let imgView = JYBaseImageView()
        if let nameStr = name{
            let image = UIImage.init(named: nameStr)
            imgView.image = image
        }
        imgView.contentMode = .scaleAspectFill
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }
    
    //MARK: UIView
    /**
     *  快速创建 View
     *  @param  bgColor 背景色
     *  return  JYBaseView
     */
    static func createView(bgColor: UIColor? = .white) -> JYBaseView {
        let view = JYBaseView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = bgColor
        return view
    }
    
    //MARK: UITableView
    /// 创建tableView
    ///
    /// - Parameters:
    ///   - style: 类型
    ///   - separatorStyle: 分割线类型
    /// - Returns: JYBaseTableView
    static func createTableView(style: UITableView.Style = .plain, separatorStyle: UITableViewCell.SeparatorStyle = .none) -> JYBaseTableView{
        let t = JYBaseTableView.init(frame: CGRect.zero, style: style)
        t.translatesAutoresizingMaskIntoConstraints = false
        t.separatorStyle = separatorStyle
        return t
    }
    
    //MARK: UIScrollView
    /// 创建ScrollView
    ///
    /// - Parameters:
    ///   - showVScrollIndicator: 是否显示竖直方向滚动条
    ///   - showHScrollIndicator: 是否显示水平方向滚动条
    ///   - bounces: bounces past edge of content and back again
    /// - Returns: JYBaseScrollView
    static func createScrollView(showVScrollIndicator: Bool = false, showHScrollIndicator: Bool = false, bounces: Bool = false) -> JYBaseScrollView{
        let s = JYBaseScrollView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.showsVerticalScrollIndicator = showVScrollIndicator
        s.showsHorizontalScrollIndicator = showHScrollIndicator
        s.bounces = bounces
        if #available(iOS 11.0, *) {
            s.contentInsetAdjustmentBehavior = .never
        }
        return s
    }
    
    //MARK: UITextField
    /**
     *  快速创建 调用系统键盘的UITextField
     *  @param  font 字号
     *  @param  textColor 字体颜色
     *  @param  textAlignment 对齐方式
     *
     *  return JYBaseTextFiled
     */
    static func createSystemTextField(font: UIFont , textColor: UIColor , textAlignment: NSTextAlignment = .left) -> JYBaseTextFiled {
        let filed = JYBaseTextFiled()
        filed.translatesAutoresizingMaskIntoConstraints = false
        setTextField(textField: filed, font: font, textColor: textColor, textAlignment: textAlignment)
        return filed
    }
    /// 内部设置输入框字体大小颜色和对齐方式
    ///
    /// - Parameters:
    ///   - textField: 输入框
    ///   - font: 字号
    ///   - textColor: 字体颜色
    ///   - textAlignment: 对齐方式
    private static func setTextField(textField: UITextField, font: UIFont , textColor: UIColor , textAlignment: NSTextAlignment = .left){
        textField.font = font
        textField.textColor = textColor
        textField.textAlignment = textAlignment
    }
}
