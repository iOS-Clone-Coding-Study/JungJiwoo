//
//  RadioListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class RadioListTVC: UITableViewCell {
    static let identifier = "RadioListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var radioImageView: UIImageView!
    @IBOutlet var radioTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension RadioListTVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.text = "Apple Music 라디오"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        radioTitleLabel.text = "Party Starters Radio with Rebecca Judd"
        radioTitleLabel.textColor = .black
        radioTitleLabel.font = .systemFont(ofSize: 10)
    }
}
