//
//  CommonNavigationbarView.swift
//  Experiments
//
//  Created by iOS Team on 12/03/18.
//  Copyright © 2018 iOS Team. All rights reserved.
//

import UIKit

enum NavigationType {
    case Back
    case Front
}

protocol NavigationbarDelegate:class {
    
    func NavigationToPushOrPop(type:NavigationType) 
    
    
}

class CommonNavigationbarView: UIView {

    @IBOutlet var nextButton: UIButton!
    @IBOutlet var backButton: UIButton!
    weak var delegate:NavigationbarDelegate!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    static func loadNib() -> CommonNavigationbarView {
        if let view = UINib(nibName: "CommonNavigationbar", bundle: nil).instantiate(withOwner: nil, options: [:]).first as? CommonNavigationbarView {
            return view
        } else {
            return CommonNavigationbarView()
        }
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        
        delegate.NavigationToPushOrPop(type: .Back)
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        delegate.NavigationToPushOrPop(type: .Front)
    }
    
    
}
