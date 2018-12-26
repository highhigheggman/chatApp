//
//  MyChatTableViewCell.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/08.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit

class MyChatTableViewCell: UITableViewCell {

    @IBOutlet weak var TextLabel: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension MyChatTableViewCell: ChatCellProtocol {
    func setTextLabel(text: String) {
        self.TextLabel.text = text
    }
}
