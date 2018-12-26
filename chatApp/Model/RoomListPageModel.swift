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
    
    
    var rooms: List<RoomModel>
    let roomManager = RoomManager.default
    let accountManager = AccountManager.default
    
    init() {
        // ToDo: 強制アンラップを修正
        self.rooms = roomManager.read(user: accountManager.user!)
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
