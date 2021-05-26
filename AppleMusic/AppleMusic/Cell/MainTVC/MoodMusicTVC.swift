//
//  MoodMusicTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class MoodMusicTVC: UITableViewCell {
    static let identifier = "MoodMusicTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var moodMusicImageView: UIImageView!
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
extension MoodMusicTVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.text = "무드별 음악"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        categoryTitleLabel.text = "행복"
        categoryTitleLabel.textColor = .black
        categoryTitleLabel.font = .systemFont(ofSize: 10)
        
    }
}
