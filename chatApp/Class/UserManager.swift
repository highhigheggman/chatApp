//
//  UserManager.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/23.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol UserManagerProtcol {
    static var `default` : UserManagerProtcol { get }
    
    func needSync() -> Bool
    func sync() -> Bool
    
    func write(userID: String, userName: String)
    func join(room: RoomModel, user: UserModel)
    func read() -> Results<UserModel>
}

final class UserManager: UserManagerProtcol {
    
    // The default MessageManager object
    static var `default`: UserManagerProtcol = {
        return UserManager()
    }()
    
    //let masterUserOperator = MasterUserOperator()
    let localUserOperator = LocalUserOperator()
    
    func needSync() -> Bool {
        return false
    }
    
    func sync() -> Bool {
        return true
    }
    
    func write(userID: String, userName: String) {
        localUserOperator.write(userID: userID, userName: userName)
    }
    
    func join(room: RoomModel, user: UserModel) {
        localUserOperator.joinRoom(room: room, user: user)
    }
    
    func read() -> Results<UserModel> {
        let users = localUserOperator.readAll()
        return users
    }
}
