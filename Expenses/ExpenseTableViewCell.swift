//
//  ExpenseTableViewCell.swift
//  Expenses
//
//  Created by Plecas, Ante (MU-Student) on 1/23/20.
//  Copyright © 2020 Plecas, Ante (MU-Student). All rights reserved.
//

import UIKit

class ExpenseTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
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
