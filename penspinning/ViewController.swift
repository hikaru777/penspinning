//
//  ViewController.swift
//  penspinning
//
//  Created by Hikaru.Honda on 2021/10/17.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet var emailField: UITextField!
     @IBOutlet var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPressed() {
        if let email = emailField.text, let password = passwordField.text {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                guard let user = authResult?.user, error == nil else   {
                    print("登録に失敗しました:" ,error!.localizedDescription)
                    return
                }
                print("登録に成功しました", user.email!)
              //  performSegue(withIdentifier: "signIn", sender: nil)
            }
        }
    }//guard let user = authResult?.user, error == nil else
}
    

