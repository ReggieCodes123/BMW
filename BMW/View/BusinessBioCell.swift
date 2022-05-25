//
//  BusinessBioCell.swift
//  BMW
//
//  Created by TMCF on 5/24/22.
//

import UIKit

class BusinessBioCell: UITableViewCell {

    @IBOutlet weak var missionField: UITextView!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var missionLabel: UILabel!
    @IBOutlet weak var siteField: UITextField!
    @IBOutlet weak var siteLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var profitLabel: UILabel!
    @IBOutlet weak var profitField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sizeField: UITextField!
    @IBOutlet weak var sectorField: UITextField!
    @IBOutlet weak var listCurrentPartnersField: UITextView!
    @IBOutlet weak var listCurrentPartnersLabel: UILabel!
    @IBOutlet weak var bioField: UITextView!
    @IBOutlet weak var businessProfilePic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func updateBusiness(_ sender: Any) {
        self.inputViewController?.performSegue(withIdentifier: "updateBusinesstoHome", sender: self)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
