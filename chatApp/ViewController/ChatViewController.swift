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
        messageManager.send(groupID: "1", text: "こんにちは!!!", complection: { text in
            print(text!)
        })
        
    }

}

