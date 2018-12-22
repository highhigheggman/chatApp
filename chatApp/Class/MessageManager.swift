//
//  MessageManager.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/12.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation

protocol MessageManagerProtcol {
    
    static var `default` : MessageManagerProtcol { get }
    
    func needSync(room: RoomModel, latestedMessageID: String, completion: @escaping (Bool?) -> Void)
    func sync(room: RoomModel, completion: @escaping (Bool?) -> Void)
    
    func send(room: RoomModel, text: String, complection: @escaping(String?) -> Void)
    func readAll(room: RoomModel) -> String
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
    func needSync(room: RoomModel, latestedMessageID: String, completion: @escaping (Bool?) -> Void) {
        
    }
    
    func sync(room: RoomModel, completion: @escaping (Bool?) -> Void) {
        mastetrMessageOperator.readAll(room: room, complection: { messages in
            
            guard let messages = messages else {
                completion(false)
                return
            }
            
            completion(true)
            
        })
    }
    
    func send(room: RoomModel, text: String, complection: @escaping (String?) -> Void) {
        
        // user情報取得
        let user = UserModel(userID: "1", userName: "Taro")
        // メッセージの送信
        mastetrMessageOperator.write(user: user, room: room, text: "あいうえお", complection: { messageID in
            guard let messageID = messageID else {
                return
            }
            
            // LocalDB 更新処理
            print("LocalDB 更新成功- userID: \(user.userID), roomID: \(room.roomID), messageID: \(messageID), text: \(text)")
            complection(messageID)
            
        })
        
    }
    
    func readAll(room: RoomModel) -> String {
        print("DBの中身")
        return("DBの中身")
    }
    
    
}
