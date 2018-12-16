//
//  MasterMessageOperator.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/13.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation

// 仮 DB本体
struct MasterMessage {
    var userID: String
    var roomID: String
    var messageID: String
    var text: String
    var time: Date
}

// 仮 DB本体との通信用クラス... 時間があればmysqlか何かに置き換える
protocol MasterMessageOperatorProtocol {
    
    static var `default` : MasterMessageOperatorProtocol { get }
    
    func send(userID: String, roomID: String, text: String, complection: @escaping(_ messageID: String?) -> Void)
    
    func readDiff(userID: String, roomID: String, latestMessageID: String, messageCount: Int,
                  complection: @escaping(String?) -> Void)
    
    func readAll(roomID: String, complection: @escaping(String?) -> Void)
}

final class MasterMessageOperator: MasterMessageOperatorProtocol {
    
    // The default MasterMessageOperator object
    static var `default`: MasterMessageOperatorProtocol = {
        return MasterMessageOperator()
    }()
    
    // 仮 data
    var data = [MasterMessage]()
    
    init() {
        data.append(MasterMessage(userID: "1", roomID: "1", messageID: UUID().uuidString,text: "おはよう", time: Date()))
        data.append(MasterMessage(userID: "2", roomID: "1", messageID: UUID().uuidString,text: "こんにちは", time: Date()))
        data.append(MasterMessage(userID: "1", roomID: "1", messageID: UUID().uuidString,text: "こんばんは", time: Date()))
        data.append(MasterMessage(userID: "1", roomID: "1", messageID: UUID().uuidString,text: "おはよう", time: Date()))
        data.append(MasterMessage(userID: "2", roomID: "1", messageID: UUID().uuidString,text: "こんにちは", time: Date()))
    }
    
    func send(userID: String, roomID: String, text: String, complection: @escaping (String?) -> Void) {

        // Insert
        let messageID = UUID().uuidString
        data.append(MasterMessage(userID: "1", roomID: "1", messageID: messageID, text: "おはよう", time: Date()))
        
        // ローカルDBに　MessageIDをリターン
        print("メッセージ送信成功- userID: \(userID), roomID: \(roomID), text: \(text)")
        complection(messageID)
    }
    
    func readDiff(userID: String, roomID: String, latestMessageID: String, messageCount: Int, complection: @escaping (String?) -> Void) {
        complection("readDiff")
    }
    
    func readAll(roomID: String, complection: @escaping (String?) -> Void) {
        complection("readAllMaster")
    }
    
}
