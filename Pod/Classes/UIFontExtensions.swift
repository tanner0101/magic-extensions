//
//  UIFontExtensions.swift
//  Pods
//
//  Created by Tanner Nelson on 1/14/16.
//
//

import UIKit

extension UIFont {
    
    ///Prints out all UIFont families and names. Useful for finding the name of a custom font.
    class func printFontNames() {
        for family: String in UIFont.familyNames() {
            print("\(family)")
            
            for name in UIFont.fontNamesForFamilyName(family) {
                print("\t\(name)")
            }
        }
    }
    
}