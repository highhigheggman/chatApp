//
//  MessageManager.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/12.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation

// Local DBの　Message Table更新用
protocol MessageManagerProtcol {
    
    static var `default` : MessageManagerProtcol { get }
    
    func sync(room: RoomModel, completion: @escaping (Bool?) -> Void)
    func send(room: RoomModel, text: String, complection: @escaping(String?) -> Void)
    func readAll(room: RoomModel) -> String
}

final class MessageManager: MessageManagerProtcol {
    
    // Get the default MessageOperator
    var mastetrMessageOperator = MasterMessageOperator.default
    var localMessageOperator = LocalMessageOperator.default
    

    // The default MessageManager object
    static var `default`: MessageManagerProtcol = {
        return MessageManager()
    }()
    
    func sync(room: RoomModel, completion: @escaping (Bool?) -> Void) {
        mastetrMessageOperator.readAll(roomID: "ID", complection:{ message in
            
            guard let message = message else {
                completion(false)
                return
            }
            
            print(message)
            completion(true)
            
        })
    }
    
    func send(room: RoomModel, text: String, complection: @escaping (String?) -> Void) {
        
        // user情報取得
        let userID: String = "1"
        // メッセージの送信
        mastetrMessageOperator.send(userID: userID, roomID: room.roomID, text: "あいうえお", complection: { messageID in
            guard let messageID = messageID else {
                return
            }
            
            // LocalDB 更新処理
            print("LocalDB 更新成功- userID: \(userID), roomID: \(room.roomID), messageID: \(messageID), text: \(text)")
            complection(messageID)
            
        })
        
    }
    
    func readAll(room: RoomModel) -> String {
        print("DBの中身")
        return("DBの中身")
    }
    
    
}
