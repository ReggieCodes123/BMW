//
//  RegistrationViewController.swift
//  BMW
//
//  Created by TMCF on 5/24/22.
//

import UIKit
import Parse

class RegistrationViewController: UIViewController {
    
    
    @IBOutlet weak var EmailLabel: UITextField!
    
    @IBOutlet weak var UsernameLabel: UITextField!
    
    @IBOutlet weak var PasswordLabel: UITextField!
    
    @IBOutlet weak var Segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateAccountButton(_ sender: Any) {
        let newUser = PFUser()
        newUser.username = self.UsernameLabel.text
        newUser.email = self.EmailLabel.text
        newUser.password = self.PasswordLabel.text
        newUser.signUpInBackground{(success: Bool, error: Error?) in
        if let error = error{
            print(error.localizedDescription)
        } else {
        print("User successfully registered!")
        }}
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
