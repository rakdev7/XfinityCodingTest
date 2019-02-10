//
//  Config.swift
//  Simpsons Character Viewer
//
//  Created by Dileep Vasa on 2/10/19.
//  Copyright © 2019 Xfinity. All rights reserved.
//

import Foundation

class Config {
    
    static var endpoint: String  {
        get {
            
            if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
                if let dic = NSDictionary(contentsOfFile: path) {
                    return dic["ENDPOINT_URL"] as? String ?? ""
                }
            }
            
            return ""
        }
    }
}
