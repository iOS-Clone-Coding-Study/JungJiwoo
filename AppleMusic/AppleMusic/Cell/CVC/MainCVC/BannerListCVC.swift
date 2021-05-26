//
//  BannerListCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class BannerListCVC: UICollectionViewCell {
    static let identifier = "BannerListCVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var bannerTitleLabel: UILabel!
    @IBOutlet var categoryTitleLabel: UILabel!
    @IBOutlet var bannerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension BannerListCVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.textColor = .gray
        titleLabel.font = .systemFont(ofSize: 10)
        
        bannerTitleLabel.textColor = .black
        bannerTitleLabel.font = .systemFont(ofSize: 15)
        
        categoryTitleLabel.textColor = .gray
        categoryTitleLabel.font = .systemFont(ofSize: 15)
    }
}
