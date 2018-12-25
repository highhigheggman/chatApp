//
//  UserListPageModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/23.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

class UserListPageModel {
    
    var users: Results<UserModel>!
    let userManager = UserManager.default
    
    init() {
        self.users = userManager.read()
    }
    
    func write(userName: String) {
        userManager.write(userID: NSUUID().uuidString, userName: userName)
    }
    
    func sync() {
        if (userManager.needSync()) {
            if (!userManager.sync()) {
                // error処理
            }
        }
    }
    
    func get(byIndex: Int) -> UserModel {
        return users[byIndex]
    }
    
    func count() -> Int {
        return users.count
    }
    
}
