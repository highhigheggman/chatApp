//
//  CChatViewModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/13.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

class ChatPageModel {
    
    // Room
    let room: RoomModel
    
    // Manager
    let messageManager: MessageManagerProtcol
    let accountManager: AccountManagerProtocol
    
    // Data
    let messages: List<MessageModel>
    
    init(room: RoomModel) {
        self.room = room
        self.messageManager = MessageManager.default
        self.accountManager = AccountManager.default
        
        self.messages = self.messageManager.read(room: self.room)
    }
    
    func write(text: String) {
        // user情報取得
        guard let user = accountManager.user else {
            return
        }
        
        self.messageManager.write(room: self.room, user: user, text: text) { success in
            if (!success) {
                // error 処理
            }
        }
    }
    
    // ToDo: Manager部分で needSync をSync に組み込む
    func sync() {
        messageManager.needSync(room: self.room) { needSync in
            if (needSync) {
                self.messageManager.sync(room: self.room) { success in
                    if (!success) {
                        // error 処理
                    }
                }
            }
        }
    }
    
    func get(byIndex: Int) -> MessageModel {
        return self.messages[byIndex]
    }
    
    func isMyMessage(message: MessageModel) -> Bool {
        
        if accountManager.user?.userID == message.user?.userID {
            return true
        } else {
            return false
        }
    }
    
    func count() -> Int {
        return self.messages.count
    }
    
}
