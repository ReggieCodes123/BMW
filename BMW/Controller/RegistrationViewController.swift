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
    
    var newUser = PFUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateAccountButton(_ sender: Any) {
        newUser = PFUser()
        newUser.username = self.UsernameLabel.text
        newUser.email = self.EmailLabel.text
        newUser.password = self.PasswordLabel.text
        if Segment.selectedSegmentIndex == 0 {
            newUser["type"] = "Investor"
            self.performSegue(withIdentifier: "RegistrationToInvestorBio", sender: sender)
//            newUser.signUpInBackground{(success: Bool, error: Error?) in
//            if let error = error{
//                print(error.localizedDescription)
//            } else {
//                self.performSegue(withIdentifier: "RegistrationToInvestorBio", sender: sender)
//                print("User successfully registered!")
//            }}
        } else {
            newUser["type"] = "Business"
            self.performSegue(withIdentifier: "RegistrationToBusinessBio", sender: sender)
//            newUser.signUpInBackground{(success: Bool, error: Error?) in
//            if let error = error{
//                print(error.localizedDescription)
//            } else {
//                self.performSegue(withIdentifier: "RegistrationToBusinessBio", sender: sender)
//                print("User successfully registered!")
//            }}
        }
    }
    
    
//     MARK: - Navigation
//
//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destination.
//         Pass the selected object to the new view controller.\
        if(segue.identifier == "RegistrationToBusinessBio" ){
            let editBio = segue.destination as! EditBusinessBioViewController
            editBio.user = self.newUser
        }else if(segue.identifier == "RegistrationtoInvestorBio"){
            let editBio = segue.destination as! EditInvestorBioViewController
            editBio.user = self.newUser
        }
    }
    

}
