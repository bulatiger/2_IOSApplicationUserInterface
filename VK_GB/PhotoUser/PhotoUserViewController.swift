//
//  PhotoUserViewController.swift
//  VK_GB
//
//  Created by Булат Минибаев on 10.06.2021.
//

import UIKit

class PhotoUserViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var photos: [Photo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension PhotoUserViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionCell.identifier, for: indexPath) as! PhotoCollectionCell
        cell.configure(photos[indexPath.item])
        return cell
    }
    
    
}
