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
    @objc dynamic var room: RoomModel?
    @objc dynamic var messageID: String = ""
    @objc dynamic var text: String = ""
    
    // primary key
    override static func primaryKey() -> String? {
        return "messageID"
    }
    
    convenience init(user: UserModel, room: RoomModel, messageID: String, text: String) {
        self.init()
        
        self.user = user
        self.room = room
        self.messageID = messageID
        self.text = text
    }
}
