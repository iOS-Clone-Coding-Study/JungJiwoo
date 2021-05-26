//
//  BannerListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class BannerListTVC: UITableViewCell {
    static let identifier = "BannerListTVC"
    
    @IBOutlet var bannerCollectionView: UICollectionView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var bannerListTitleLabel: UILabel!
    @IBOutlet var categoryTitleLabel: UILabel!
    @IBOutlet var listImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension BannerListTVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.text = "추천 플레이리스트"
        titleLabel.textColor = .gray
        titleLabel.font = .systemFont(ofSize: 10)
        
        bannerListTitleLabel.text = "Rap Life"
        bannerListTitleLabel.textColor = .black
        bannerListTitleLabel.font = .systemFont(ofSize: 15)
        
        categoryTitleLabel.text = "Apple Music 힙합/랩"
        categoryTitleLabel.textColor = .gray
        categoryTitleLabel.font = .systemFont(ofSize: 15)
    }
}
