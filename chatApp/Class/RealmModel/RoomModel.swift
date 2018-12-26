//
//  RoomModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/17.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import RealmSwift

class RoomModel: Object {
    // ToDo: 直接参照を持たせる
    @objc dynamic var roomID = ""
    @objc dynamic var roomName = ""
    @objc dynamic var time = Date()
    
    // relation
    var users = List<UserModel>()
    var messages = List<MessageModel>()
    
    // primary key
    override static func primaryKey() -> String? {
        return "roomID"
    }
    
    convenience init(roomID: String, roomName: String, users: List<UserModel>) {
        self.init()
        
        self.roomID = roomID
        self.roomName = roomName
        self.users = users
    }
}

