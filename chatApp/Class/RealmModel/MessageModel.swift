//
//  MessageModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/17.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import RealmSwift

class MessageModel: Object {
    @objc dynamic var userID: String = ""
    @objc dynamic var roomID: String = ""
    @objc dynamic var messageID: String = ""
    @objc dynamic var text: String = ""
    
    convenience init(userID: String, roomID: String, messageID: String, text: String) {
        self.init()
        
        self.userID = userID
        self.roomID = roomID
        self.messageID = messageID
        self.text = text
    }
}
