//
//  welcomeViewController.swift
//  fireBaseLogin
//
//  Created by Charlotte Voskuilen on 19-12-16.
//  Copyright © 2016 Alpaca. All rights reserved.
//

import UIKit
import Firebase

class welcomeViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let currentUserEmail = FIRAuth.auth()?.currentUser?.email
        
        emailLabel.text = currentUserEmail
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
