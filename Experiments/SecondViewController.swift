//
//  SecondViewController.swift
//  Experiments
//
//  Created by iOS Team on 12/03/18.
//  Copyright © 2018 iOS Team. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController, NavigationableView, AppearenceProtocol {
    
    
    @IBOutlet var titleLbl: UILabel!
    var navigationbarView:CommonNavigationbarView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationbarView = addCustomNavigationbar()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        applyPreferredColor()
    }
    
    func applyPreferredColor() {
        navigationbarView?.backgroundColor = color.primaryColor
        titleLbl.backgroundColor = color.primaryColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapOnRedButton(_ sender: UIButton) {
        
        UserSelectedPreference.sharedPreference.account = .personal
        applyPreferredColor()

        
    }
    
    @IBAction func tapOnBlueButton(_ sender: Any) {
        
        UserSelectedPreference.sharedPreference.account = .business
        applyPreferredColor()


    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SecondViewController:NavigationbarDelegate {
    
    func NavigationToPushOrPop(type: NavigationType) {
        
        switch type {
        case .Back:
            navigationController?.popViewController(animated: true)
            break
        case .Front:
           break
            
        }
    }
    
}

