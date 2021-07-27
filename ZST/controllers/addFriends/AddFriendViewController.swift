//
//  AddFriendViewController.swift
//  ZST
//
//  Created by Сева on 27.07.2021.
//

import UIKit

class AddFriendViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    private let newCellID = "addFriendCell"
    
    var friendsListq = [Friends(name: "Ваня", secondName: "Пашин", image: UIImage(named: "facetest")),
                       Friends(name: "Леша", secondName: "Птушкин", image: nil),
                       Friends(name: "Игорь", secondName: "Куров", image: UIImage(named: "facetest")),
                       Friends(name: "Артем", secondName: "нифедов", image: nil),
                       Friends(name: "Ира", secondName: "парена", image: UIImage(named: "facetest"))]
}


extension AddFriendViewController: UITableViewDelegate {
    
}

extension AddFriendViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsListq.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: newCellID, for: indexPath) as? FriendsListTableViewCell else {
            fatalError("error in dequeueReusableCell FriendsListTableViewCell") }
        cell.friendsFirstName.text = friendsListq[indexPath.row].name
        cell.friendsSecondName.text = friendsListq[indexPath.row].secondName
        cell.friendsImage.image = friendsListq[indexPath.row].image
        return cell
    }
    
    
}
