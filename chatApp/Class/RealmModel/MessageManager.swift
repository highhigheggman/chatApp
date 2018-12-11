//
//  MessageManager.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/12.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation

// 仮 DB本体との通信用クラス_移動予定
protocol MastetrMessageAPIProtocol {
    
    func send(groupID: String, complection: @escaping(String?) -> Void)
    
    func showDiff(groupID: String, latestMessageID: String, messageCount: Int,
                  complection: @escaping(String?) -> Void)
    
    func showAll(groupID: String, complection: @escaping(String?) -> Void)
}

final class MasterMessageAPI: MastetrMessageAPIProtocol {
    
    // The default MasterMessageAPI object
    static var `default`: MasterMessageAPI = {
        return MasterMessageAPI()
    }()
    
    func send(groupID: String, complection: @escaping (String?) -> Void) {
        complection("send")
    }
    
    func showDiff(groupID: String, latestMessageID: String, messageCount: Int,
                  complection: @escaping (String?) -> Void) {
        
        complection("showDiff")
        
    }
    
    func showAll(groupID: String, complection: @escaping (String?) -> Void) {
        complection("showAllMaster")
    }
    
}

// Local DBの　Message Table更新用
protocol MessageManagerProtcol {
    
    // DBの情報とか
    
    //
    
    func sync(groupID: String, completion: @escaping (Bool?) -> Void)
    func send(groupID: String, complection: @escaping(String?) -> Void)
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
    
    func send(groupID: String, complection: @escaping (String?) -> Void) {
        mastetrMessageAPI.send(groupID: "ID", complection: { messageID in
            guard let messageID = messageID else {
                return
            }
            
            print(messageID)
            
            // LocalDB 更新処理
            complection(messageID)
            
        })
        
    }
    
    func showAll(groupID: String) -> String {
        print("DBの中身")
        return("DBの中身")
    }
    
    
}
