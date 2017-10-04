//
//  ViewControllerTableTableViewCell.swift
//  firebase-app
//
//  Created by Juan Murillo on 4/10/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class ViewControllerTableTableViewCell: UITableViewCell {

    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var labelName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
