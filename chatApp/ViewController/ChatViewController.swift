//
//  ViewController.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/08.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit
import RealmSwift

class ChatPageViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テスト用
        let userList = List<UserModel>()
        userList.append(UserModel(userID: "1", userName: "Taro"))
        userList.append(UserModel(userID: "2", userName: "Jiro"))
        
        let chatPageModel = ChatPageModel(room: RoomModel(roomID: "A", roomName: "Taro, Jiro", users: userList))
        chatPageModel.send()
    }

}

