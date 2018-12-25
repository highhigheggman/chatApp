//
//  LocalRoomOperator.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/25.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol LocalRoomOperatorProtocol {
    func write(roomID: String, roomName: String, users: List<UserModel>) -> Void
    func readAll() -> Results<RoomModel>
    
}

class LocalRoomOperator: LocalRoomOperatorProtocol {
    
    // Get the default Realm
    lazy var realm = try! Realm()
    
    func write(roomID: String, roomName: String, users: List<UserModel>) {
        
        let roomModel = RoomModel(roomID: roomID, roomName: roomName, users: users)
        
        try! realm.write() {
            realm.add(roomModel)
        }
    }
    
    func readAll() -> Results<RoomModel> {
        let roomModels = realm.objects(RoomModel.self)
        
        return roomModels
    }
    
    
    
}
