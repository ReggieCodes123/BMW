//
//  LoginViewController.swift
//  BMW
//
//  Created by TMCF on 5/24/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var PasswordField: UITextField!
    
    @IBOutlet weak var UsernameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        let Username = UsernameField.text ?? ""
        let Password = PasswordField.text ?? ""
        PFUser.logInWithUsername(inBackground: Username, password: Password){(user: PFUser?, error: Error?) in
            if let error = error {
                print("User log in failed: \(error.localizedDescription)")
            } else {
                print("user logged in successfully")
                
                //display view controller that needs to shown after successful login
            }
        }
    }
    
    @IBAction func onInvestorSelect(_ sender: Any) {
        print("Hey")
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
