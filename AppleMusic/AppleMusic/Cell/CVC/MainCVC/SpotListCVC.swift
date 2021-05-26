//
//  SpotListCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class SpotListCVC: UICollectionViewCell {
    static let identifier = "SpotListCVC"
    
    @IBOutlet var spotImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension SpotListCVC {
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
