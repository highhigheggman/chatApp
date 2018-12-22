//
//  LocalMessageOperator.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/17.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol LocalMessageOperatorProtocol {
    func write(user: UserModel, room: RoomModel, messageID:String, text: String) -> Bool
    //func read(user: UserModel, room: RoomModel, messageID:String) -> MessageModel
    //func readAll(user: UserModel, room: RoomModel) -> [MessageModel]
}


class LocalMessageOperator: LocalMessageOperatorProtocol {
    
    // Get the default Realm
    lazy var realm = try! Realm()
    
    func write(user: UserModel, room: RoomModel, messageID: String, text: String) -> Bool {
        
        
        try! self.realm.write {
            let message = MessageModel(user: user, messageID: messageID, text: text)
            room.messages.append(message)
        }
 
        return true
    }
    
    //func read(user: UserModel, room: RoomModel, messageID: String) -> MessageModel {
        
    //}
    
    //func readAll(user: UserModel, room: RoomModel) -> [MessageModel] {
    //}
}
