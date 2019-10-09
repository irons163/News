//
//  NetworkTool.swift
//  News
//
//  Created by Phil on 2018/8/21.
//  Copyright © 2018年 Phil. All rights reserved.
//

import Foundation
import Alamofire

protocol NetworkTool {
    static func loadMyCellData()
    static func loadMyConcern()
}

extension NetworkTool {
    
    static func loadMyCellData() {
        let url = BASE_URL + "user/tab/tabs/?"
        let params = ["device_id": device_id]
        
        Alamofire.request(url, parameters: params).response { (response) in
            
        }
    }
    
    
}
