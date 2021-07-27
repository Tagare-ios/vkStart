//
//  FriendsTableViewController.swift
//  ZST
//
//  Created by Сева on 27.07.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    private let cellID = "FriendsListTableViewCell"
    var friendsList = [Friends(name: "alex", secondName: "pelix", image: UIImage(named: "facetest")),
                       Friends(name: "andrew", secondName: "arton", image: nil),
                       Friends(name: "artur", secondName: "borsh", image: UIImage(named: "facetest")),
                       Friends(name: "artem", secondName: "nerub", image: nil),
                       Friends(name: "jhone", secondName: "sina", image: UIImage(named: "facetest"))]
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? FriendsListTableViewCell else {
            fatalError("error in dequeueReusableCell FriendsListTableViewCell") }
        cell.friendsFirstName.text = friendsList[indexPath.row].name
        cell.friendsSecondName.text = friendsList[indexPath.row].secondName
        cell.friendsImage.image = friendsList[indexPath.row].image
        return cell
        
        
        
    }
}



