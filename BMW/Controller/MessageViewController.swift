//
//  MessageViewController.swift
//  BMW
//
//  Created by TMCF on 5/25/22.
//

import UIKit
//import FLAnimatedImage

class MessageViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.animationImages = [UIImage (named: "ss1")!,
                                     UIImage (named: "ss2")!,
                                     UIImage (named: "ss3")!,
                                     UIImage (named: "ss4")!]
        imageView.animationDuration = 4
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
        imageView.image = UIImage(named: "ss4")
//        let imageData = try! Data(contentsOf: Bundle.main.url(forResource: "message", withExtension: "gif")!)
//        let gifimage = UIImage.gif(data: imageData)
//        imageView.image = gifimage
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
