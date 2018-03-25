//
//  CommonNavigationbarProtocol.swift
//  Experiments
//
//  Created by iOS Team on 12/03/18.
//  Copyright © 2018 iOS Team. All rights reserved.
//

import Foundation
import UIKit

protocol NavigationableView {
    
    func  addCustomNavigationbar() -> CommonNavigationbarView
}

extension NavigationableView where Self:UIViewController {
    
    func  addCustomNavigationbar() -> CommonNavigationbarView {
        
        let navigationBar = CommonNavigationbarView.loadNib()
        navigationBar.delegate = self as! NavigationbarDelegate
        self.view.addSubview(navigationBar)
        handleLeftButtonRightButtions(viewcontroller: self, navigationbar: navigationBar)
        addConstraintsForNavigationbar(navigationBar: navigationBar)
        return navigationBar
        
    }
    
    func addConstraintsForNavigationbar(navigationBar:CommonNavigationbarView)  {
        
        let leadingConstrint = NSLayoutConstraint(item: navigationBar, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingConstraint = NSLayoutConstraint(item: navigationBar, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let topConstraint = NSLayoutConstraint(item: navigationBar, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let heightConstant = NSLayoutConstraint(item: navigationBar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 75)
        
        NSLayoutConstraint.activate([leadingConstrint, trailingConstraint, topConstraint, heightConstant])
    }
    
    func handleLeftButtonRightButtions(viewcontroller:UIViewController, navigationbar:CommonNavigationbarView)  {
        
        switch viewcontroller {
        case is RootViewController:
            navigationbar.backButton.isHidden = true
            break
        default:
            break
        }
    }
    
    
}
