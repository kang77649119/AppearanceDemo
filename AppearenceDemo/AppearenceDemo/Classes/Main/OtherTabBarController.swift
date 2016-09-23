//
//  OtherTabBarController.swift
//  AppearenceDemo
//
//  Created by 也许、 on 16/9/23.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class OtherTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 当前类有效
        UITabBar.appearance(whenContainedInInstancesOf: [OtherTabBarController.classForCoder() as! UIAppearanceContainer.Type]).tintColor = UIColor.red

        // 初始化UI
        setupUI()
        
    }

    // 初始化UI
    func setupUI() {
        
        initTabBar(childController: FirstVC(), title: "首页", image: "tabbar_home")
        initTabBar(childController: SecondVC(), title: "消息", image: "tabbar_message_center")
        initTabBar(childController: ThirdVC(), title: "发现", image: "tabbar_discover")
        initTabBar(childController: FourthVC(), title: "我", image: "tabbar_profile")
        
    }
    
    // 初始化tabBar
    func initTabBar(childController: UIViewController, title: String, image: String) {
        
        let nav = UINavigationController(rootViewController: childController)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = UIImage(named: image)
        
        // 设置文字颜色,但不是全局的效果
        //let titleStyleDict = [ NSForegroundColorAttributeName : UIColor.orange ]
        //nav.tabBarItem.setTitleTextAttributes(titleStyleDict, for: .highlighted)
        
        // 默认选中图片会被系统渲染
        // nav.tabBarItem.selectedImage = UIImage(named: image + "_highlighted")
        // 使用原图模式,选中图片可以不被渲染
        nav.tabBarItem.selectedImage = UIImage(named: image + "_highlighted")?.withRenderingMode(.alwaysOriginal)
        self.addChildViewController(nav)
        
    }

}
