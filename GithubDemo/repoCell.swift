//
//  repoCell.swift
//  GithubDemo
//
//  Created by Chandler Griffin on 1/27/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class repoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var branchImageView: UIImageView!
    @IBOutlet weak var branchLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        branchImageView.image = #imageLiteral(resourceName: "fork")
        starImageView.image = #imageLiteral(resourceName: "star")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
