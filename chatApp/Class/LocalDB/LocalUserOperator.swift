//
//  LocalUserOperator.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/23.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol LocalUserOperatorProtocol {
    func write(userID: String, userName: String) -> Void
    func readAll() -> Results<UserModel>

}

class LocalUserOperator: LocalUserOperatorProtocol {
    
    // Get the default Realm
    lazy var realm = try! Realm()
    
    func write(userID: String, userName: String) {
        
        let userModel = UserModel(userID: userID, userName: userName)
        
        try! realm.write() {
            realm.add(userModel)
        }
    }
    
    func readAll() -> Results<UserModel> {
        let userModels = realm.objects(UserModel.self)
        
        return userModels
    }
    
    
    
}
