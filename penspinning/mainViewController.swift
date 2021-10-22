//
//  mainViewController.swift
//  penspinning
//
//  Created by Hikaru.Honda on 2021/10/17.
//

import UIKit
import Firebase

class mainViewController: UIViewController {
    
    @IBOutlet var emailField: UITextField!
     @IBOutlet var passwordField: UITextField!
    
    var handle: AuthStateDidChangeListenerHandle?


    override func viewDidLoad() {
        super.viewDidLoad()
        }
    override func viewWillAppear(_ animated: Bool) {
        handle = Auth.auth().addStateDidChangeListener { auth, user in
        
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Auth.auth().removeStateDidChangeListener(handle!)

    }
      
       @IBAction func didTapSignIn(_ sender: UIButton) {

        if let email = emailField.text, let password = passwordField.text {
               Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
                   guard let user = authResult?.user, error == nil else {
                       print("サインインに失敗しました:" ,error!.localizedDescription)
                       return
                   }
                   print("サインインに成功しました", user.email!)
                
               }
           }
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
