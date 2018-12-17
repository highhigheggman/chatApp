//
//  UserModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/17.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import RealmSwift

class UserModel: Object {
    @objc dynamic var userID: String = ""
    @objc dynamic var userName: String = ""
    
    // primary key
    override static func primaryKey() -> String? {
        return "userID"
    }
    
    convenience init(userID: String, userName: String) {
        self.init()
        
        self.userID = userID
        self.userName = userName
    }
}

