//
//  PhotoCollectionCell.swift
//  VK_GB
//
//  Created by Булат Минибаев on 10.06.2021.
//

import UIKit

class PhotoCollectionCell: UICollectionViewCell {
    
    static let identifier = "PhotoCollectionCell"
    @IBOutlet private weak var photoImage: UIImageView!
    
    func configure(_ photo: Photo) {
        photoImage.image = UIImage(named: photo.photoImage)
    }
    
}
