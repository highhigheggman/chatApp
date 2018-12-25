//
//  AccountManager.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/26.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import Foundation
import RealmSwift

protocol AccountManagerProtocol {
    static var `default` : AccountManagerProtocol { get }
    
    func setUserModel(userModel: UserModel)
    var user: UserModel? { get }
}

final class AccountManager : AccountManagerProtocol {
    
    private var userModel: UserModel?
    
    static var `default` : AccountManagerProtocol = {
        return AccountManager()
    }()
    
    func setUserModel(userModel: UserModel) {
        self.userModel = userModel
    }
    
    var user: UserModel? {
        return self.userModel
    }
}
