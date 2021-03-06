//
//  RoomPageViewController.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/18.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit

class RoomListPageViewController: UIViewController {

    @IBOutlet weak var AddButton: UIBarButtonItem!
    @IBOutlet weak var RoomListTable: UITableView!
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        // gen next view
        guard let addRoomPageViewController = R.storyboard.main.addRoomPageViewController() else {
            return
        }
        
        // push next view
        self.navigationController?.pushViewController(addRoomPageViewController, animated: true)
    }
    
    let roomListPageModel = RoomListPageModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView
        RoomListTable.dataSource = self
        RoomListTable.delegate = self
        RoomListTable.register(UINib(nibName: "RoomTableViewCell", bundle: nil), forCellReuseIdentifier: "RoomTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        RoomListTable.reloadData()
    }

}

extension RoomListPageViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roomListPageModel.count()
    }
    
    // return cell height (px)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.roomTableViewCell, for: indexPath)!
        let room = roomListPageModel.get(byIndex: indexPath.row)
        
        // Configure the cell
        cell.RoomNameLabel.text = room.roomName
        
        return cell
    }
    
    // cell tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // deselect
        tableView.deselectRow(at: indexPath, animated: true)
        
        // gen next page
        guard let chatPageViewController = R.storyboard.main.chatPageViewController() else {
            return
        }
        
        chatPageViewController.chatPageModel = ChatPageModel(room: self.roomListPageModel.get(byIndex: indexPath.row))
        
        // push next view
        self.navigationController?.pushViewController(chatPageViewController, animated: true)
        
    }
}

