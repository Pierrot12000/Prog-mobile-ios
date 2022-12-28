//
//  TableViewCell.swift
//  Notes
//
//  Created by Pierre Grimmer on 07/11/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var tick: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
