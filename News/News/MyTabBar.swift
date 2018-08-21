//
//  MyTabBar.swift
//  News
//
//  Created by Phil on 2018/8/21.
//  Copyright © 2018年 Phil. All rights reserved.
//

import UIKit

class MyTabBar: UITabBar {

    lazy var publishButton : UIButton = {
        let publishButton = UIButton(type : .custom)
        publishButton.setBackgroundImage(UIImage(named: "feed_publish_44x44_"), for: .normal)
        publishButton.setBackgroundImage(UIImage(named: "feed_publish_44x44_"), for: .selected)
        publishButton.sizeToFit()
        return publishButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(publishButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("fatal")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let width = frame.width
        let height = frame.height
        
        publishButton.center = CGPoint(x: width * 0.5, y: height * 0.5)
        let buttonW = width * 0.2
        let buttonH: CGFloat = height
        let buttonY: CGFloat = 0
        
//        for (index ,button) in subviews.enumerated() {
//            if !button.isKind(of: NSClassFromString("UITabBarButton")!) {continue}
//            let buttonX = buttonW * (index > 1 ? CGFloat(index + 1) : CGFloat(index))
//            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
//        }
        
        var index = 0
        
        for button in subviews {
            if !button.isKind(of: NSClassFromString("UITabBarButton")!) { continue }
            let buttonX = buttonW * (index > 1 ? CGFloat(index + 1) : CGFloat(index))
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
            index += 1
        }
    }
}
