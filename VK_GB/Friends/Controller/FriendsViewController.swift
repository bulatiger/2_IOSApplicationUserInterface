//
//  FriendsViewController.swift
//  VK_GB
//
//  Created by Булат Минибаев on 02.06.2021.
//

import UIKit

final class FriendsViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView!
    
    var friends = UserStorage.shared.users
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPhotoSegue",
           let destinationController = segue.destination as? PhotoUserViewController,
           let indexSelectedCell = tableView.indexPathForSelectedRow {
            let friend = friends[indexSelectedCell.row]
            destinationController.photos = friend.photos
        }
    }
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier, for: indexPath) as! FriendsTableViewCell
//            UITableViewCell(style: .default, reuseIdentifier: FriendsTableViewCell.identifier)
        cell.configure(friends[indexPath.row])
        return cell
    }
    
    
}
