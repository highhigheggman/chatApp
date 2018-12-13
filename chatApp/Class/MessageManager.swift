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
    
    func sync(groupID: String, completion: @escaping (Bool?) -> Void)
    func send(groupID: String, text: String, complection: @escaping(String?) -> Void)
    func showAll(groupID: String) -> String
}

final class MessageManager: MessageManagerProtcol {
    
    // Get the default Realm
    //lazy var realm = try! Realm()
    
    // Get the default MasterMessageAPI
    var mastetrMessageAPI = MasterMessageAPI.default
    
    func sync(groupID: String, completion: @escaping (Bool?) -> Void) {
        mastetrMessageAPI.showAll(groupID: "ID", complection:{ message in
            
            guard let message = message else {
                completion(false)
                return
            }
            
            print(message)
            completion(true)
            
        })
    }
    
    func send(groupID: String, text: String, complection: @escaping (String?) -> Void) {
        
        // user情報取得
        let userID: String = "1"
        // メッセージの送信
        mastetrMessageAPI.send(userID: userID, groupID: groupID, text: "あいうえお", complection: { messageID in
            guard let messageID = messageID else {
                return
            }
            
            // LocalDB 更新処理
            print("LocalDB 更新成功- userID: \(userID), groupID: \(groupID), messageID: \(messageID), text: \(text)")
            complection(messageID)
            
        })
        
    }
    
    func showAll(groupID: String) -> String {
        print("DBの中身")
        return("DBの中身")
    }
    
    
}
