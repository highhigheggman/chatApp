//
//  ViewController.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/08.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    //let messageManager: MessageManagerProtcol

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let messageManager = MessageManager()
        
        messageManager.send(groupID: "ID", complection: { messegeID in
            print("送信成功:\(messegeID!)")
        })
        
        messageManager.sync(groupID: "ID", completion: { success in
            if(success!) {
                print("成功")
            }
        })
        
        messageManager.showAll(groupID: "ID")
        
    }

}

