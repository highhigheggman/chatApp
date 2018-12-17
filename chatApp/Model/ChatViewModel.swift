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
    
    init(room: RoomModel) {
        self.room = room
        self.messageManager = MessageManager.default
        
    }
    
    func send() {
        self.messageManager.send(room: self.room, text: "test") { message in
            print(message!)
        }
    }
    
    
}
