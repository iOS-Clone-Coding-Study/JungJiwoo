//
//  OurSpotListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class OurSpotListTVC: UITableViewCell {
    static let identifier = "OurSpotListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var musicImageView: UIImageView!
    @IBOutlet var musicTitleLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension OurSpotListTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "우리가 주목한 플레이리스트"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        musicTitleLabel.text = "Rap Life"
        musicTitleLabel.textColor = .black
        musicTitleLabel.font = .systemFont(ofSize: 10)
        
        categoryLabel.text = "Apple Music 힙합/랩"
        categoryLabel.textColor = .gray
        categoryLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
