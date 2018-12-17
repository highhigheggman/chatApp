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
    @objc dynamic var messageID: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var time: Date = Date()
    
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
