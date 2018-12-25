//
//  UserListPageViewController.swift
//  chatApp
//
//  Created by yoshiki-t on 2018/12/18.
//  Copyright © 2018 yoshiki-t. All rights reserved.
//

import UIKit
import Rswift

class UserListPageViewController: UIViewController {

    @IBOutlet weak var UserListTable: UITableView!
    @IBOutlet weak var AddButton: UIBarButtonItem!
    
    let userListPageModel = UserListPageModel()
    
    @IBAction func addTaskButtonTapped(_ sender: UIButton) {
        userListPageModel.write(userName: "User\(userListPageModel.count() + 1)")
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userListPageModel.count()
    }
    
    // return cell height (px)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.userTableViewCell, for: indexPath)!
        let user = userListPageModel.get(byIndex: indexPath.row)
        
        // Configure the cell
        cell.UserNameLabel.text = user.userName
        
        return cell
    }
    
    // cell tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // deselect
        tableView.deselectRow(at: indexPath, animated: true)
        
        // set account
        AccountManager.default.setUserModel(userModel: self.userListPageModel.get(byIndex: indexPath.row))
        
        // gen next view
        guard let roomListPageViewController = R.storyboard.main.roomListPageViewController() else {
            return
        }
        
        // push next view
        self.navigationController?.pushViewController(roomListPageViewController, animated: true)

    }
}
