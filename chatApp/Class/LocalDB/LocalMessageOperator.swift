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
    func write(user: UserModel, room: RoomModel, messageID:String, text: String) -> Void
    func readAll(room: RoomModel) -> List<MessageModel>
}


class LocalMessageOperator: LocalMessageOperatorProtocol {
    
    // Get the default Realm
    lazy var realm = try! Realm()
    
    func write(user: UserModel, room: RoomModel, messageID: String, text: String) -> Void {
        
        try! self.realm.write {
            let message = MessageModel(user: user, messageID: messageID, text: text)
            room.messages.append(message)
        }
 
    }
    
    func readAll(room: RoomModel) -> List<MessageModel> {
        
        let messageModels = room.messages
        
        return messageModels
    }
}
