//
//  FriendsListTableViewCell.swift
//  ZST
//
//  Created by Сева on 27.07.2021.
//

import UIKit

class FriendsListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var friendsImage: UIImageView!
    @IBOutlet weak var friendsFirstName: UILabel!
    @IBOutlet weak var friendsSecondName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
