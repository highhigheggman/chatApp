//
//  AddRoomPageViewController.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/25.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit

class AddRoomPageViewController: UIViewController {
    
    @IBOutlet weak var UserListTable: UITableView!
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        addRoomPageModel.write(roomName: "Room\(addRoomPageModel.roomCount() + 1)")
        self.navigationController?.popViewController(animated: true)
    }
    
    let addRoomPageModel = AddRoomPageModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView
        UserListTable.dataSource = self
        UserListTable.delegate = self
        UserListTable.allowsMultipleSelection = true
        UserListTable.register(UINib(nibName: "AddRoomTableViewCell", bundle: nil), forCellReuseIdentifier: "AddRoomTableViewCell")
    }
    
}

extension AddRoomPageViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addRoomPageModel.userCount()
    }
    
    // return cell height (px)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.addRoomTableViewCell, for: indexPath)!
        let user = addRoomPageModel.get(byIndex: indexPath.row)
        
        // Configure the cell
        cell.UserNameLabel.text = user.userName
        cell.SelectedLabel.isHidden = true
        
        return cell
    }
    
    // cell tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // deselect
        tableView.deselectRow(at: indexPath, animated: true)
        
        // check
        let cell = tableView.cellForRow(at: indexPath) as! AddRoomTableViewCell
        cell.SelectedLabel.isHidden = !(cell.SelectedLabel.isHidden)
        
        addRoomPageModel.addSelectedUsers(index: indexPath.row)
        
    }
}
