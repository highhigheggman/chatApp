//
//  MessageModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/17.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import RealmSwift

class MessageModel: Object {
    @objc dynamic var user: UserModel?
    @objc dynamic var messageID = ""
    @objc dynamic var text = ""
    @objc dynamic var time = Date()
    
    // primary key
    override static func primaryKey() -> String? {
        return "messageID"
    }
    
    convenience init(user: UserModel, messageID: String, text: String) {
        self.init()
        
        self.user = user
        self.messageID = messageID
        self.text = text
    }
}
