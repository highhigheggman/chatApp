//
//  MasterMessageAPI.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/13.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation

// 仮 DB本体
struct MasterMessage {
    var userID: String
    var groupID: String
    var messageID: String
    var text: String
    var time: Date
}

// 仮 DB本体との通信用クラス... 時間があればmysqlか何かに置き換える
protocol MastetrMessageAPIProtocol {
    
    static var `default` : MastetrMessageAPIProtocol { get }
    
    func send(userID: String, groupID: String, text: String, complection: @escaping(_ messageID: String?) -> Void)
    
    func showDiff(userID: String, groupID: String, latestMessageID: String, messageCount: Int,
                  complection: @escaping(String?) -> Void)
    
    func showAll(groupID: String, complection: @escaping(String?) -> Void)
}

final class MasterMessageAPI: MastetrMessageAPIProtocol {
    
    // The default MasterMessageAPI object
    static var `default`: MastetrMessageAPIProtocol = {
        return MasterMessageAPI()
    }()
    
    // 仮 data
    var data = [MasterMessage]()
    
    init() {
        data.append(MasterMessage(userID: "1", groupID: "1", messageID: UUID().uuidString,text: "おはよう", time: Date()))
        data.append(MasterMessage(userID: "2", groupID: "1", messageID: UUID().uuidString,text: "こんにちは", time: Date()))
        data.append(MasterMessage(userID: "1", groupID: "1", messageID: UUID().uuidString,text: "こんばんは", time: Date()))
        data.append(MasterMessage(userID: "1", groupID: "1", messageID: UUID().uuidString,text: "おはよう", time: Date()))
        data.append(MasterMessage(userID: "2", groupID: "1", messageID: UUID().uuidString,text: "こんにちは", time: Date()))
    }
    
    func send(userID: String, groupID: String, text: String, complection: @escaping (String?) -> Void) {

        // Insert
        let messageID = UUID().uuidString
        data.append(MasterMessage(userID: "1", groupID: "1", messageID: messageID, text: "おはよう", time: Date()))
        
        // ローカルDBに　MessageIDをリターン
        print("メッセージ送信成功- userID: \(userID), groupID: \(groupID), text: \(text)")
        complection(messageID)
    }
    
    func showDiff(userID: String, groupID: String, latestMessageID: String, messageCount: Int, complection: @escaping (String?) -> Void) {
        complection("showDiff")
    }
    
    func showAll(groupID: String, complection: @escaping (String?) -> Void) {
        complection("showAllMaster")
    }
    
}
