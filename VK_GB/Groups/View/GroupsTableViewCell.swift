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
        groupImageView.image = UIImage(named: group.avatar)
        groupNameLabel.text = group.name
        
        groupImageView.layer.cornerRadius = groupImageView.frame.size.height / 2
    }
}
