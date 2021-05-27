//
//  RecentMusicListCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class RecentMusicListCVC: UICollectionViewCell {
    static let identifier = "RecentMusicListCVC"
    
    @IBOutlet var musicImageView: UIImageView!
    @IBOutlet var musicTitleLabel: UILabel!
    @IBOutlet var musicSingerLabel: UILabel!
    @IBOutlet var music2ImageView: UIImageView!
    @IBOutlet var music2TitleLabel: UILabel!
    @IBOutlet var music2SingerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension RecentMusicListCVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        musicTitleLabel.textColor = .black
        musicTitleLabel.font = .systemFont(ofSize: 10)
        
        musicSingerLabel.textColor = .gray
        musicSingerLabel.font = .systemFont(ofSize: 10)
        
        music2TitleLabel.textColor = .black
        music2TitleLabel.font = .systemFont(ofSize: 10)
        
        music2SingerLabel.textColor = .gray
        music2SingerLabel.font = .systemFont(ofSize: 10)
    }
}
