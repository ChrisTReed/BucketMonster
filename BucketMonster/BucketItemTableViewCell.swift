//
//  BucketItemTableViewCell.swift
//  BucketMonster
//
//  Created by Christopher Reed on 2/11/17.
//  Copyright © 2017 Christopher Reed. All rights reserved.
//

import UIKit

class BucketItemTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
