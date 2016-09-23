//
//  FourthVC.swift
//  AppearenceDemo
//
//  Created by 也许、 on 16/9/22.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class FourthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        // 替换window的根控制器,重新指定TabBar,来验证tabBar设置文字样式中的 全局有效和当前类有效 是否好使
        let tabBarController = OtherTabBarController()
        UIApplication.shared.keyWindow?.rootViewController = tabBarController
        
    }

}
