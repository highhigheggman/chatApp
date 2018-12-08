//
//  loaclDB.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/08.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation

class MessageList {
    
    // Sync MasterDB, {Recieve Message ?}
    func sync(groupID: Int) {
        
        // check need Sync {Timestamp??}
        
        // if need Sync

    }
    
    
    // Send Message
    func sendMessage(groupID: Int, messageStr: String) {
        
        // get Time
        
        // update LocalDB [Realm]
        // groupID, messageStr, Time
        
        // update MasterDB [とりあえず Realmで代用]
        // userIDs, messageStr, Time
    }
    
}



