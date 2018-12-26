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
    
    func write(roomID: String, roomName: String, users: List<UserModel>) -> RoomModel
    func read(user: UserModel) -> List<RoomModel>
    func readAll() -> Results<RoomModel>
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
    
    func write(roomID: String, roomName: String, users: List<UserModel>) ->RoomModel {
        let room = localRoomOperator.write(roomID: roomID, roomName: roomName, users: users)
        
        return room
    }
    
    func read(user: UserModel) -> List<RoomModel> {
        let rooms = localRoomOperator.read(user: user)
        return rooms
    }
    
    func readAll() -> Results<RoomModel> {
        let rooms = localRoomOperator.readAll()
        return rooms
    }
    
}
