//
//  MessageManager.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/12.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol MessageManagerProtcol {
    
    static var `default` : MessageManagerProtcol { get }
    
    func needSync(room: RoomModel, completion: @escaping (Bool) -> Void)
    func sync(room: RoomModel, completion: @escaping (Bool) -> Void)
    
    func write(room: RoomModel, user: UserModel, text: String, complection: @escaping(Bool) -> Void)
    func read(room: RoomModel) -> List<MessageModel>
}

final class MessageManager: MessageManagerProtcol {
    
    // Get the default MessageOperator
    var mastetrMessageOperator = MasterMessageOperator()
    var localMessageOperator = LocalMessageOperator()

    // The default MessageManager object
    static var `default`: MessageManagerProtcol = {
        return MessageManager()
    }()
    
    // 最新のメッセージIDを比較し、同期が必要かを判定する。
    func needSync(room: RoomModel, completion: @escaping (Bool) -> Void) {
        
        // Master
        let MasterLatestedID = mastetrMessageOperator.data[mastetrMessageOperator.data.endIndex].messageID
        
        // Local
        let LocalLatestedID = room.messages[room.messages.endIndex].messageID
        
        if MasterLatestedID != LocalLatestedID {
            completion(false)
        } else {
            completion(false)
        }
    }
    
    func sync(room: RoomModel, completion: @escaping (Bool) -> Void) {
        mastetrMessageOperator.readAll(room: room, complection: { messages in
            
            guard let messages = messages else {
                completion(false)
                return
            }
            
            // 同期処理
            
            
            completion(true)
            
        })
    }
    
    func write(room: RoomModel, user: UserModel, text: String, complection: @escaping (Bool) -> Void) {
        
        // メッセージの送信
        mastetrMessageOperator.write(user: user, room: room, text: text, complection: { messageID in
            guard let messageID = messageID else {
                complection(false)
                return
            }
            
            // LocalDB 更新処理
            print("LocalDB 更新成功- userID: \(user.userID), roomID: \(room.roomID), messageID: \(messageID), text: \(text)")
            
            self.localMessageOperator.write(user: user, room: room, messageID: messageID, text: text)
            complection(true)
            
        })
        
    }
    
    func read(room: RoomModel) -> List<MessageModel> {
        return self.localMessageOperator.readAll(room: room)
    }
    
    
}
