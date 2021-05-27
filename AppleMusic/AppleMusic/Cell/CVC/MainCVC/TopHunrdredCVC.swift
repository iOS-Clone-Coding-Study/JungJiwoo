//
//  TopHunrdredCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class TopHunrdredCVC: UICollectionViewCell {
    static let identifier = "TopHunrdredCVC"
    
    @IBOutlet var topImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension TopHunrdredCVC {
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
