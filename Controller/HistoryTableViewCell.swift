//
//  HistoryTableViewCell.swift
//  absensi
//
//  Created by Perdi Yansyah on 09/07/23.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

 
    @IBOutlet weak var Img: UIImageView!
    
    @IBOutlet weak var Pt: UILabel!
    
    @IBOutlet weak var Alamat: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
