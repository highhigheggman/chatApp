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
   
    @IBOutlet weak var ChatTable: UITableView!
    @IBOutlet weak var SendMessageButton: UIButton!
    @IBOutlet weak var InputField: UITextField!
    
    // ToDo: レイヤー分け
    var chatPageModel: ChatPageModel? = nil
    
    private var viewModel: ChatPageViewModel!
    
    
    @IBAction func SendMessageButtonTapped(_ sender: Any) {
        guard let inputText = InputField.text else {
            return
        }
        
        chatPageModel!.write(text: inputText)
        
        // clear
        InputField.text = ""
        ChatTable.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.chatPageModel == nil {            
            self.navigationController?.popViewController(animated: true)
        }
        
        // TableView Setting
        ChatTable.dataSource = self
        ChatTable.delegate = self
        ChatTable.separatorStyle = .none
        ChatTable.allowsSelection = false
        ChatTable.register(UINib(nibName: "MyChatTableViewCell", bundle: nil), forCellReuseIdentifier: "MyChatTableViewCell")
        ChatTable.register(UINib(nibName: "YourChatTableViewCell", bundle: nil), forCellReuseIdentifier: "YourChatTableViewCell")
        
        // Notification
        addNotification()

    }

}

extension ChatPageViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatPageModel!.count()
    }
    
    // return cell height (px)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: (UITableViewCell & ChatCellProtocol)
    
        // ToDo:
        let message = self.chatPageModel?.get(byIndex: indexPath.row)
            ?? MessageModel(user: UserModel(userID: "err", userName: "err"), messageID: NSUUID().uuidString, text: "err")
        
        if self.chatPageModel!.isMyMessage(message: message) {
            cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.myChatTableViewCell, for: indexPath)!

        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.yourChatTableViewCell, for: indexPath)!
        }
        
        // Configure the cell
        cell.setTextLabel(text: message.text)
        
        return cell
    }
    
    // cell tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // deselect
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}

extension ChatPageViewController {
    
    fileprivate func addNotification() {
        
        NotificationCenter.default.reactive.notifications(forName: UIResponder.keyboardWillShowNotification).observe { _ in
            print("show Key")
        }
        
        NotificationCenter.default.reactive.notifications(forName: UIResponder.keyboardWillHideNotification).observe { _ in
            print("hide key")
        }
    }
    
    fileprivate func removeNotification() {
        
    }
}

