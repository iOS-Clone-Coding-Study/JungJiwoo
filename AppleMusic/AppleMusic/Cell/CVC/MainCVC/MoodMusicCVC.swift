//
//  MoodMusicCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class MoodMusicCVC: UICollectionViewCell {
    static let identifier = "MoodMusicCVC"
    
    @IBOutlet var moodImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension MoodMusicCVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 10)
    }
}
