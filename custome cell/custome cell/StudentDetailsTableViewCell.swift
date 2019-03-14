//
//  StudentDetailsTableViewCell.swift
//  custome cell
//
//  Created by Owner on 2019-03-14.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class StudentDetailsTableViewCell: UITableViewCell {
    @IBOutlet weak var lblStudentFirstName: UILabel!
    @IBOutlet weak var lblStudentResult: UILabel!
    @IBOutlet weak var lblStudentFGender: UILabel!
    @IBOutlet weak var sid: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
