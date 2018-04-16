//
//  todayMovieTableViewCell.swift
//  JKLMovies
//
//  Created by 三海教育 on 2018/4/16.
//  Copyright © 2018年 JK. All rights reserved.
//

import UIKit

class TodayMovieTableViewCell: UITableViewCell {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
