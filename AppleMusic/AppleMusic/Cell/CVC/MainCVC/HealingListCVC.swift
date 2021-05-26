//
//  HealingListCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class HealingListCVC: UICollectionViewCell {
    static let identifier = "HealingListCVC"
    
    @IBOutlet var healingImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension HealingListCVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 10)
        
        subTitleLabel.textColor = .gray
        subTitleLabel.font = .systemFont(ofSize: 10)
    }
}
