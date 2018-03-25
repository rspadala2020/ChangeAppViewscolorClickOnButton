//
//  ColorAppearianceProtocol.swift
//  Experiments
//
//  Created by iOS Team on 12/03/18.
//  Copyright © 2018 iOS Team. All rights reserved.
//

import Foundation
import UIKit

enum AccountType {
    case personal
    case business
}

protocol AppearenceProtocol:NSObjectProtocol {
    
    var color:BaseColor {get}
    
    func applyPreferredColor()
}

extension AppearenceProtocol {
    
    var color:BaseColor {
        
        get {
            return UserSelectedPreference.sharedPreference.color
        }
    }
}

class UserSelectedPreference {
    
    static let sharedPreference = UserSelectedPreference()
    var color:BaseColor = BaseColorPersonal()
    
    var account:AccountType = .personal {
        
        didSet {
            
            if account == .personal {
                
                color = BaseColorPersonal()
                
            }else {
                color = BaseColorBusiness()
            }
        }
        
    }
    
    func userPreferedColor() {
        
    }
    
}

protocol BaseColor {
    
    var primaryColor: UIColor { get }

    
}

class BaseColorPersonal:BaseColor {
    
    init() {}
    
    var primaryColor: UIColor = {
        
        return UIColor.red
        
    }()
    
}

class BaseColorBusiness:BaseColor {
    
    init() {}

    var primaryColor: UIColor = {
        
        return UIColor.blue
        
    }()
    
    
}




