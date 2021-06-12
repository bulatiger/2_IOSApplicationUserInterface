//
//  FriendsTableViewCell.swift
//  VK_GB
//
//  Created by Булат Минибаев on 02.06.2021.
//

import UIKit

final class FriendsTableViewCell: UITableViewCell {
    
    static let identifier = "FriendsTableViewCell"
    
    @IBOutlet private weak var avatarFriendImage: UIImageView!
    @IBOutlet private weak var nameFriendLabel: UILabel!
    
    func configure(_ friend: User) {
        avatarFriendImage.image = UIImage(named: friend.avatar)
        nameFriendLabel.text = friend.name
        
        //avatarFriendImage.layer.borderWidth = 1.0
        avatarFriendImage.layer.cornerRadius = avatarFriendImage.frame.size.height / 2
    }
    
}
