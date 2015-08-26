//
//  HeadlineTableViewCell.swift
//  Newsy
//
//  Created by Astro on 8/26/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import UIKit

class HeadlineTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var storyImageView: UIImageView!
    @IBOutlet weak var imageViewWidthConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
