//
//  FriendsViewController.swift
//  VK_GB
//
//  Created by Булат Минибаев on 02.06.2021.
//

import UIKit

final class FriendsViewController: UIViewController {
    
    
    @IBOutlet private var tableView: UITableView!
    
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier, for: indexPath) as! FriendsTableViewCell
//            UITableViewCell(style: .default, reuseIdentifier: FriendsTableViewCell.identifier)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    
}
