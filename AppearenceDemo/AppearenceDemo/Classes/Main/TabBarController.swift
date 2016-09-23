//
//  TabBarController.swift
//  AppearenceDemo
//
//  Created by 也许、 on 16/9/22.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 全局设置文字颜色
//         UITabBar.appearance().tintColor = UIColor.orange
        
        // 当前类有效
//         UITabBar.appearance(whenContainedInInstancesOf: [TabBarController.classForCoder() as! UIAppearanceContainer.Type]).tintColor = UIColor.orange
        
        // 全局设置文字颜色
         let titleStyleDict = [ NSForegroundColorAttributeName : UIColor.orange ]
         UITabBarItem.appearance().setTitleTextAttributes(titleStyleDict, for: .selected)
        // ps:字体的设置,必须在普通模式下才会生效
        let fontDict = [ NSFontAttributeName : UIFont.systemFont(ofSize: 13) ]
        UITabBarItem.appearance().setTitleTextAttributes(fontDict, for: .normal)
        
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
