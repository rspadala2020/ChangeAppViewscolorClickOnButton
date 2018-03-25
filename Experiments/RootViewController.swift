//
//  RootViewController.swift
//  Experiments
//
//  Created by iOS Team on 12/03/18.
//  Copyright © 2018 iOS Team. All rights reserved.
//

import UIKit

class RootViewController: BaseViewController, NavigationableView, AppearenceProtocol {
    
    @IBOutlet var titleLbl: UILabel!
    var navigationbarView:CommonNavigationbarView? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationbarView = addCustomNavigationbar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        applyPreferredColor()
    }
    
    func applyPreferredColor() {
        navigationbarView?.backgroundColor = color.primaryColor
        titleLbl.backgroundColor = color.primaryColor
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

extension RootViewController:NavigationbarDelegate {
    
    func NavigationToPushOrPop(type: NavigationType) {
        
        switch type {
        case .Back:
            navigationController?.popViewController(animated: true)
            break
        case .Front:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            navigationController?.pushViewController(secondVc, animated: true)

        }
    }

}
