//
//  UserListPageViewController.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/18.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit

class UserListPageViewController: UIViewController {

    @IBOutlet weak var UserListTable: UITableView!
    @IBOutlet weak var AddButton: UIBarButtonItem!
    
    let userListPageModel = UserListPageModel()
    
    @IBAction func addTaskButtonTapped(_ sender: UIButton) {
        userListPageModel.write(userID: NSUUID().uuidString, userName: NSUUID().uuidString)
        self.UserListTable.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView
        UserListTable.dataSource = self
        UserListTable.delegate = self
        UserListTable.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")

    }

}

extension UserListPageViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userListPageModel.count()
    }
    
    // return cell height (px)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        let user = userListPageModel.get(byIndex: indexPath.row)
        
        // Configure the cell
        cell.UserNameLabel.text = user.userName
        
        return cell
    }
    
    // cell tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // deselect
        tableView.deselectRow(at: indexPath, animated: true)

    }
}
