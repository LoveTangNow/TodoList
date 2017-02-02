//
//  NormalTableViewCell.swift
//  TodoList
//
//  Created by Thomas Liu on 2017/1/17.
//  Copyright © 2017年 ThomasLiu. All rights reserved.
//

import UIKit

class NormalTableViewCell: UITableViewCell {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var icon: UIImageView!

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var money: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        background.layer.cornerRadius = 2
        background.clipsToBounds = true
        
        icon.layer.cornerRadius = 4
        icon.clipsToBounds = true
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
