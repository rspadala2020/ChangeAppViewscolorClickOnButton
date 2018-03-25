//
//  ThirdViewController.swift
//  Experiments
//
//  Created by iOS Team on 12/03/18.
//  Copyright © 2018 iOS Team. All rights reserved.
//

import UIKit

class ThirdViewController: BaseViewController, NavigationableView, AppearenceProtocol {

    @IBOutlet var titleLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        addCustomNavigationbar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func applyPreferredColor() {
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
