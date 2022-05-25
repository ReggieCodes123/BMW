//
//  TinderScreenViewController.swift
//  BMW
//
//  Created by TMCF on 5/25/22.
//

import UIKit

class TinderScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func connect(_ sender: Any) {
        let dialog = UIAlertController(title: "Connected", message: "You connected with Dinoco! Check messages to see if they'd like to work with you as well!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler:{ (action) ->
            Void in print("OK BUTTON TAPPED")})
        dialog.addAction(ok)
        self.present(dialog,animated: true, completion: nil)
    }
    
    @IBAction func pass(_ sender: Any) {
    }
    
    
    @IBAction func question(_ sender: Any) {
        let dialog = UIAlertController(title: "Question/Concern/Suggestion", message: "What do you want to let them know?", preferredStyle: .alert)
        dialog.addTextField(configurationHandler: { textField in textField.placeholder = "Type your question, concern, or suggestion here!"})
        let ok = UIAlertAction(title: "Send", style: .default, handler:{ (action) ->
            Void in print("OK BUTTON TAPPED")})
        dialog.addAction(ok)
        self.present(dialog,animated: true, completion: nil)
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
