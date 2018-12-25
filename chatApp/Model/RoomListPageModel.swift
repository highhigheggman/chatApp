//
//  RoomListPageModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/25.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

class RoomListPageModel {
    
    var rooms: Results<RoomModel>!
    let roomManager = RoomManager.default
    
    init() {
        self.rooms = roomManager.read()
    }
    
    func write(roomID: String, roomName: String, users: List<UserModel>) {
        roomManager.write(roomID: roomID, roomName: roomName, users: users)
    }
    
    func sync() {
        if (roomManager.needSync()) {
            if (!roomManager.sync()) {
                // error処理
            }
        }
    }
    
    func get(byIndex: Int) -> RoomModel {
        return rooms[byIndex]
    }
    
    func count() -> Int {
        return rooms.count
    }
}
