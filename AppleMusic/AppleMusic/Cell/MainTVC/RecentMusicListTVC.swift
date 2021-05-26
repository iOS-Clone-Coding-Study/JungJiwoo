//
//  RecentMusicListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class RecentMusicListTVC: UITableViewCell {
    static let identifier = "RecentMusicListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var firstMusicTitleLabel: UILabel!
    @IBOutlet var firstMusicSingerLabel: UILabel!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var secondMusicTitleLabel: UILabel!
    @IBOutlet var secondMusicSingerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension RecentMusicListTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "최신곡"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        firstMusicTitleLabel.text = "Atlantis"
        firstMusicTitleLabel.textColor = .black
        firstMusicTitleLabel.font = .systemFont(ofSize: 10)
        
        firstMusicSingerLabel.text = "샤이니"
        firstMusicSingerLabel.textColor = .gray
        firstMusicSingerLabel.font = .systemFont(ofSize: 10)
        
        secondMusicTitleLabel.text = "Dun Dun Dance"
        secondMusicTitleLabel.textColor = .black
        secondMusicTitleLabel.font = .systemFont(ofSize: 10)
        
        secondMusicSingerLabel.text = "오마이걸"
        secondMusicSingerLabel.textColor = .gray
        secondMusicSingerLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
