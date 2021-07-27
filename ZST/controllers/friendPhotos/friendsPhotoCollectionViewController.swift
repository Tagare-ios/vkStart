//
//  friendsPhotoCollectionViewController.swift
//  ZST
//
//  Created by Сева on 28.07.2021.
//

import UIKit

private let reuseIdentifier = "FriendPhotosCollectionViewCell"

class friendsPhotoCollectionViewController: UICollectionViewController {

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        30
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? FriendPhotosCollectionViewCell else {
            fatalError("error in dequeueReusableCell friendsPhotoCollectionViewController") }
        cell.friendImage.image = UIImage(named: "facetest")
        return cell
    }
}
