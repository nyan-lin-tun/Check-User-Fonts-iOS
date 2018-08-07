//
//  CheckUserFonts.swift
//  ZawgyiDetect
//
//  Created by Nyan Lin Tun on 8/7/18.
//  Copyright © 2018 Rinda. All rights reserved.
//

import UIKit

public struct CheckUserFonts{
    
    public static func hasZawgyi() -> Bool {
        var hasZg:Bool = false
        for family: String in UIFont.familyNames
        {
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                
                if(names.contains("ZawDecode") || names.contains("Zawgyi-One") || names.contains("Zawgyi-Tai")){
                    hasZg = true
                    break
                }
            }
        }
        return hasZg
    }
}
