//
//  GroupsViewController.swift
//  VK_GB
//
//  Created by Булат Минибаев on 09.06.2021.
//

import UIKit

class GroupsViewController: UIViewController {
    
    
    @IBOutlet private weak var tableView: UITableView!
    
    var groups = GroupStorage.shared.groups
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func addGroup(_ segue: UIStoryboardSegue) {
        guard
            let sourceController = segue.source as? AllGroupViewController,
            let indexPressedCell = sourceController.tableView.indexPathForSelectedRow
        else {
            return
        }
        
        let group = sourceController.groups[indexPressedCell.row]
        
        if !groups.contains(where: { $0.name == group.name }) {
            groups.append(group)
            tableView.reloadData()
        }
    }
}

extension GroupsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GroupsTableViewCell.identifier, for: indexPath) as! GroupsTableViewCell
        cell.configure(groups[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Если была нажата кнопка «Удалить»
        if editingStyle == .delete { // Удаляем город из массива
            groups.remove(at: indexPath.row)
            // И удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade) }
    }
    
}
