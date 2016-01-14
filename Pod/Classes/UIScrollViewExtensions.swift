//
//  UIScrollViewExtensions.swift
//  Alexander Black
//
//  Created by Tanner Nelson on 1/14/16.
//  Copyright © 2016 Blue Bite. All rights reserved.
//

import UIKit

extension UIScrollView {

    /**
        Enables the UIScrollView to respond to the keyboard
        being opened by providng larger bottom content insets
        and scrolling to the relevant active view.
    */
    func respondToKeyboard() {
        self.registerForKeyboardNotifications()
    }
    
    func registerForKeyboardNotifications() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWasShown:"), name: UIKeyboardDidShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillBeHidden:"), name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func keyboardWasShown(notification: NSNotification) {
        guard let info = notification.userInfo else {
            print("No notification info for keyboard")
            return
        }
        
        guard let keyboardSize = info[UIKeyboardFrameBeginUserInfoKey]?.CGRectValue.size else {
            print("No keyboard size")
            return
        }
        
        self.contentInset.bottom = keyboardSize.height
        self.scrollIndicatorInsets.bottom = keyboardSize.height
        
        var frame = self.frame
        frame.size.height -= keyboardSize.height
        
    }
    
    func keyboardWillBeHidden(notification: NSNotification) {
        self.contentInset.bottom = 0
        self.scrollIndicatorInsets.bottom = 0
    }
}
