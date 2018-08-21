//
//  MyTabBarController.swift
//  News
//
//  Created by Phil on 2018/8/21.
//  Copyright © 2018年 Phil. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabbar = UITabBar.appearance()
        tabbar.tintColor = UIColor(red: 245/255.0, green: 90/255.0, blue: 93/255.0, alpha: 215)
        
        addChildViewControllers()
        
    }
    
    func addChildViewControllers() {
        setChildViewController(HomeViewController(), title : "首頁", imageName : "home")
        setChildViewController(VideoViewController(), title: "視頻", imageName: "video")
        setChildViewController(HeadlineViewController(), title: "頭條", imageName: "weitoutiao")
        setChildViewController(MineViewController(), title: "小視頻", imageName: "huoshan")
        setValue(MyTabBar(), forKey: "tabBar")
    }
    
    func setChildViewController(_ childController: UIViewController, title: String, imageName: String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName)
        childController.title = title
        childController.view.backgroundColor = UIColor.white
        addChildViewController(MyNavigationController(rootViewController: childController))
    }
    
}
