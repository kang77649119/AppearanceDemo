//
//  AppDelegate.swift
//  AppearenceDemo
//
//  Created by 也许、 on 16/9/22.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        // 在发现和我两个tabBar对应的控制器中更改了UITabBarController，分别设置了当前类有效的tabBar的文字样式
        self.window?.rootViewController = TabBarController()
        self.window?.makeKeyAndVisible()
        return true
        
    }


}

