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
    
    var chatPageModel: ChatPageModel? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.chatPageModel == nil {            
            self.navigationController?.popViewController(animated: true)
        }
        
        // TableView
        ChatTable.dataSource = self
        ChatTable.delegate = self
        ChatTable.register(UINib(nibName: "MyChatTableViewCell", bundle: nil), forCellReuseIdentifier: "MyChatTableViewCell")
        ChatTable.register(UINib(nibName: "YourChatTableViewCell", bundle: nil), forCellReuseIdentifier: "YourChatTableViewCell")

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
    
        
        let message = self.chatPageModel?.get(byIndex: indexPath.row)
        
        if self.chatPageModel?.isMyMessage(message: message!) ?? false {
            let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.myChatTableViewCell, for: indexPath)!
            
            return cell

        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.yourChatTableViewCell, for: indexPath)!

            return cell
        }
        
        
        // Configure the cell
        
    }
    
    // cell tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // deselect
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}


