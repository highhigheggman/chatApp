//
//  AddRoomPageModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/25.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

class AddRoomPageModel {
    
    var users: Results<UserModel>!
    var selectedUsers: List<UserModel> = List<UserModel>()
    
    let userManager = UserManager.default
    let roomManager = RoomManager.default
    
    init() {
        self.users = userManager.read()
    }
    
    func write(roomName: String) {
        // Roomを追加
        let room = roomManager.write(roomID: NSUUID().uuidString, roomName: roomName, users: self.selectedUsers)
        
        // UserにRoomへの参照を追加
        for user in selectedUsers {
            userManager.join(room: room, user: user)
        }
    }
    
    func addSelectedUsers(index: Int) {
        selectedUsers.append(self.get(byIndex: index))
    }
    
    func get(byIndex: Int) -> UserModel {
        return users[byIndex]
    }
    
    func userCount() -> Int {
        return users.count
    }
    
    func roomCount() -> Int {
        // ToDo: 直す
        return roomManager.readAll().count
    }
    
}
