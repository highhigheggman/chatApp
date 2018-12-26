//
//  LocalUserOperator.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/23.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol LocalUserOperatorProtocol {
    func write(userID: String, userName: String) -> Void
    func joinRoom(room: RoomModel, user: UserModel) -> Void
    func readAll() -> Results<UserModel>

}

class LocalUserOperator: LocalUserOperatorProtocol {
    
    // Get the default Realm
    lazy var realm = try! Realm()
    
    init() {
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    func write(userID: String, userName: String) {
        
        let userModel = UserModel(userID: userID, userName: userName)
        
        try! realm.write() {
            realm.add(userModel)
        }
    }
    
    func joinRoom(room: RoomModel, user: UserModel) {
        try! realm.write() {
            if !(user.rooms.contains(room)) {
                user.rooms.append(room)
            }
        }
    }
    
    
    func readAll() -> Results<UserModel> {
        let userModels = realm.objects(UserModel.self)
        
        return userModels
    }
    
    
    
}
