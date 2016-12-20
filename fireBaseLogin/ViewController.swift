//
//  ViewController.swift
//  fireBaseLogin
//
//  Created by Charlotte Voskuilen on 19-12-16.
//  Copyright © 2016 Alpaca. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var logoRapp: UIImageView!
    @IBOutlet weak var emailInsert: UITextField!
    @IBOutlet weak var passwordInsert: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBAction func pressedLogin(_ sender: Any) {
        loginUser()
    }
    
    //Login function. When user is not found it gives back an error.
    func loginUser(){
        FIRAuth.auth()?.signIn(withEmail: emailInsert.text!, password: passwordInsert.text!, completion: {
            user, error in
            
            if (error != nil){
                print("No User found!")
                
                //Create Account
                FIRAuth.auth()?.createUser(withEmail: self.emailInsert.text!, password: self.passwordInsert.text!, completion: { user, error in
                    
                    if (error != nil){
                        print("Couldn't create User")
                    } else {
                        print("Success")
                        //now Logged in!
                        
                        FIRAuth.auth()?.signIn(withEmail: self.emailInsert.text!, password: self.passwordInsert.text!, completion: {
                            user, error in
                            
                            if (error != nil){
                                print("Error!")
                            } else {
                                print("Success")
                                
                                //Transition to other screen
                                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                let vc = storyboard.instantiateViewController(withIdentifier: "welcomeVC") as UIViewController
                                self.present(vc, animated: true, completion: nil)
                            }
                        })
                    }
                    
                })
            } else {
                print("Success - Logged in as \(user?.email)")
            }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

