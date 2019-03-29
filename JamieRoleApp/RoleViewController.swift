//
//  RoleViewController.swift
//  JamieRoleApp
//
//  Created by stoller on 2019/3/29.
//  Copyright © 2019年 stoller. All rights reserved.
//

import UIKit

var role: Role?

class RoleViewController: UIViewController {
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let role = role {
            imageView.image = UIImage(named: role.image)
            if role.gender == "M" {
                genderSegmentedControl.selectedSegmentIndex = 0
            } else {
                genderSegmentedControl.selectedSegmentIndex = 1
            }
            
        }
        //_TEST
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
