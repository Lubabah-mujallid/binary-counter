//
//  TableViewCell.swift
//  binary counter
//
//  Created by admin on 09/12/2021.
//

import UIKit

protocol CustomCellDelegate: AnyObject {
    func plus(num: Int)
    func minus(num: Int)
}

class TableViewCell: UITableViewCell {
    @IBOutlet weak var labelCell: UILabel!
    var delegate: CustomCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    @IBAction func btnMinusPressed(_ sender: UIButton) {
        print("TableViewCell: minus btn pressed")
        let temp = Int(labelCell.text!)
        delegate?.minus(num: temp!)
    }
    
    @IBAction func btnPlusPressed(_ sender: UIButton) {
        print("TableViewCell: plus btn pressed")
        let temp = Int(labelCell.text!)
        delegate?.plus(num: temp!)
    }
}
