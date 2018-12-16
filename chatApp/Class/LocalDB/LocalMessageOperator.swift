//
//  LocalMessageOperator.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/17.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol LocalMessageOperatorProtocol {
    static var `default` : LocalMessageOperatorProtocol { get }
    func add(userID: String, roomID: String, messageID:String, text: String) -> Bool
    func read(userID: String, roomID: String, messageID:String) -> String
    func readAll(userID: String, roomID: String) -> [MessageModel]
}

class LocalMessageOperator: LocalMessageOperatorProtocol {
    
    // The default LocalMessageOperator object
    static var `default`: LocalMessageOperatorProtocol = {
        return LocalMessageOperator()
    }()
    
    // Get the default Realm
    lazy var realm = try! Realm()
    
    func add(userID: String, roomID: String, messageID: String, text: String) -> Bool {
        <#code#>
    }
    
    func read(userID: String, roomID: String, messageID: String) -> String {
        <#code#>
    }
    
    func readAll(userID: String, roomID: String) -> [MessageModel] {
        <#code#>
    }
    
}
