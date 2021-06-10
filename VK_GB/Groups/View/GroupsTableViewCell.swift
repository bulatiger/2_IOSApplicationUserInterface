//
//  GroupsTableViewCell.swift
//  VK_GB
//
//  Created by Булат Минибаев on 09.06.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
    
    static let identifier = "GroupsTableViewCell"
    
    @IBOutlet private weak var groupImageView: UIImageView!
    @IBOutlet private weak var groupNameLabel: UILabel!
    
    func configure(_ group: Group) {
        groupImageView.image = UIImage(systemName: group.avatar)
        groupNameLabel.text = group.name
    }
}
