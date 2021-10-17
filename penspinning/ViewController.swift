//
//  ViewController.swift
//  penspinning
//
//  Created by Hikaru.Honda on 2021/10/17.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet var emailField: UITextField!
     @IBOutlet var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPressed() {
        if emailField.text != "", passwordField.text != "" {
            Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) { authResult, error in
                if error == nil, let authResult = authResult {
                    
//                    self.performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
                }
                
            }
        }
    }
}

