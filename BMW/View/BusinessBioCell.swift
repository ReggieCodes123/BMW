//
//  BusinessBioCell.swift
//  BMW
//
//  Created by TMCF on 5/24/22.
//

import UIKit

class BusinessBioCell: UITableViewCell {

    @IBOutlet weak var businessWhoAreWeText: UITextView!
    @IBOutlet weak var businessProfilePic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
