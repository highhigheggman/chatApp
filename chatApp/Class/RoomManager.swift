//
//  RoomManager.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/23.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol RoomManagerProtcol {
    static var `default` : RoomManagerProtcol { get }
    
    func needSync() -> Bool
    func sync() -> Bool
    
    func write(roomID: String, roomName: String, users: List<UserModel>)
    func read() -> Results<RoomModel>
}

final class RoomManager: RoomManagerProtcol {
    
    static var `default`: RoomManagerProtcol = {
        return RoomManager()
    }()
    
    //let masterRoomOperator = MasterRoomOperator()
    let localRoomOperator = LocalRoomOperator()
    
    func needSync() -> Bool {
        return false
    }
    
    func sync() -> Bool {
        return true
    }
    
    func write(roomID: String, roomName: String, users: List<UserModel>) {
        localRoomOperator.write(roomID: roomID, roomName: roomName, users: users)
    }
    
    func read() -> Results<RoomModel> {
        let rooms = localRoomOperator.readAll()
        return rooms
    }
    
    
}
