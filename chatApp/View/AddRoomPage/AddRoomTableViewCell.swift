//
//  AddRoomTableViewCell.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/25.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit

class AddRoomTableViewCell: UITableViewCell {

    @IBOutlet weak var UserNameLabel: UILabel!
    @IBOutlet weak var SelectedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
