//
//  PhoneBookTableViewCell.swift
//  UITableViewExampleAppliedMVCPattern
//
//  Created by 김우성 on 2021/12/04.
//

import UIKit

class PhoneBookTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cellPhoneNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func updateUI(cellData: PeopleInfo) {
        let nameStr = cellData.name
        let phoneNumberInt = cellData.cellPhoneNumber
        
        self.nameLabel.text = nameStr
        self.cellPhoneNumberLabel.text = String(phoneNumberInt)
    }
}
