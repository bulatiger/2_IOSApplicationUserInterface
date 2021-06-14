//
//  AllGroupViewController.swift
//  VK_GB
//
//  Created by Булат Минибаев on 09.06.2021.
//

import UIKit

class AllGroupViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var groups = GroupStorage.shared.searchGroup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showSearchGroup",
//           let sourceController = segue.source as? GroupsViewController {
//            print("HELLO")
//            let userGroups = sourceController.groups
//            groups = userGroups
//            for item in userGroups where groups.contains(where: { $0.name == item.name }) {
//                let indexItem = groups.firstIndex(where: { $0.name == item.name })
//                groups.remove(at: indexItem!)
//            }
//            tableView.reloadData()
//            print("WORLD")
//        }
//    }
}

extension AllGroupViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GroupsTableViewCell.identifier, for: indexPath) as! GroupsTableViewCell
        cell.configure(groups[indexPath.row])
        return cell
    }
}
