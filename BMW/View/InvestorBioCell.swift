//
//  InvestorBioCell.swift
//  BMW
//
//  Created by TMCF on 5/25/22.
//

import UIKit

class InvestorBioCell: UITableViewCell {

    @IBOutlet weak var businessRequirementsField: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func UpdateProfile(_ sender: Any) {
        self.inputViewController?.performSegue(withIdentifier: "updateInvestortoHome", sender: self)
    }
}
