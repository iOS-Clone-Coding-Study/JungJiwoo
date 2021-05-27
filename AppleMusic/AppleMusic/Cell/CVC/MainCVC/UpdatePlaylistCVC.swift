//
//  UpdatePlaylistCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class UpdatePlaylistCVC: UICollectionViewCell {
    static let identifier = "UpdatePlaylistCVC"
    
    @IBOutlet var updateImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension UpdatePlaylistCVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15)
        
        commentLabel.textColor = .gray
        commentLabel.font = .systemFont(ofSize: 10)
    }
}
