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
    
    // DBの情報とか
    
    //
    
    func sync(roomID: String, completion: @escaping (Bool?) -> Void)
    func send(roomID: String, text: String, complection: @escaping(String?) -> Void)
    func readAll(roomID: String) -> String
}

final class MessageManager: MessageManagerProtcol {
    
    // Get the default Realm
    //lazy var realm = try! Realm()
    
    // Get the default MasterMessageOperator
    var mastetrMessageOperator = MasterMessageOperator.default
    
    func sync(roomID: String, completion: @escaping (Bool?) -> Void) {
        mastetrMessageOperator.readAll(roomID: "ID", complection:{ message in
            
            guard let message = message else {
                completion(false)
                return
            }
            
            print(message)
            completion(true)
            
        })
    }
    
    func send(roomID: String, text: String, complection: @escaping (String?) -> Void) {
        
        // user情報取得
        let userID: String = "1"
        // メッセージの送信
        mastetrMessageOperator.send(userID: userID, roomID: roomID, text: "あいうえお", complection: { messageID in
            guard let messageID = messageID else {
                return
            }
            
            // LocalDB 更新処理
            print("LocalDB 更新成功- userID: \(userID), roomID: \(roomID), messageID: \(messageID), text: \(text)")
            complection(messageID)
            
        })
        
    }
    
    func readAll(roomID: String) -> String {
        print("DBの中身")
        return("DBの中身")
    }
    
    
}
