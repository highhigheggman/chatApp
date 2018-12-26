//
//  MasterMessageOperator.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/13.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

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
    
    func write(user: UserModel, room: RoomModel, text: String, complection: @escaping(String?) -> Void)
    
    // MasterにupdateTime持たせて差分更新出来るように変更
    func readDiff(user: UserModel, room: RoomModel, latestMessageID: String, messageCount: Int,
                  complection: @escaping(String?) -> Void)
    
    func readAll(room: RoomModel, complection: @escaping(List<MessageModel>?) -> Void)
}

final class MasterMessageOperator: MasterMessageOperatorProtocol {
    
    // 仮 data
    var data = [MasterMessage]()
    
    init() {
        data.append(MasterMessage(userID: "1", roomID: "1", messageID: UUID().uuidString,text: "おはよう", time: Date()))
        data.append(MasterMessage(userID: "2", roomID: "2", messageID: UUID().uuidString,text: "こんにちは", time: Date()))
        data.append(MasterMessage(userID: "1", roomID: "2", messageID: UUID().uuidString,text: "こんばんは", time: Date()))
        data.append(MasterMessage(userID: "1", roomID: "1", messageID: UUID().uuidString,text: "おはよう", time: Date()))
        data.append(MasterMessage(userID: "2", roomID: "1", messageID: UUID().uuidString,text: "こんにちは", time: Date()))
    }
    
    func write(user: UserModel, room: RoomModel, text: String, complection: @escaping (String?) -> Void) {

        // Insert
        let messageID = UUID().uuidString
        data.append(MasterMessage(userID: "1", roomID: "1", messageID: messageID, text: "おはよう", time: Date()))
        
        // ローカルDBに　MessageIDをリターン
        print("メッセージ送信成功- userID: \(user.userID), roomID: \(room.roomID), text: \(text)")
        complection(messageID)
    }
    
    func readDiff(user: UserModel, room: RoomModel, latestMessageID: String, messageCount: Int, complection: @escaping (String?) -> Void) {
        complection("readDiff")
    }
    
    func readAll(room: RoomModel, complection: @escaping (List<MessageModel>?) -> Void) {
        // 仮データからRealmのListを生成
        let result = List<MessageModel>()
        
        for (index, _) in self.data.enumerated() {
            
            if index == 0 {
            }
            
        }
        
        complection(result)
    }
    
}
