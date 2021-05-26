//
//  HealingMusicTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class HealingMusicTVC: UITableViewCell {
    static let identifier = "HealingMusicTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var healingMusicImageView: UIImageView!
    @IBOutlet var themeTitleLabel: UILabel!
    @IBOutlet var categoryTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - UI
extension HealingMusicTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "긴장을 풀어주는 음악"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        themeTitleLabel.text = "재즈 소울 카페"
        themeTitleLabel.textColor = .black
        themeTitleLabel.font = .systemFont(ofSize: 10)
        
        categoryTitleLabel.text = "Apple Music 재즈"
        categoryTitleLabel.textColor = .gray
        categoryTitleLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
