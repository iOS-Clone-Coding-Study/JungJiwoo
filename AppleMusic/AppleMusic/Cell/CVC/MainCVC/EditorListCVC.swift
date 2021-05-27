//
//  EditorListCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class EditorListCVC: UICollectionViewCell {
    static let identifier = "EditorListCVC"
    
    @IBOutlet var editorImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var singerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension EditorListCVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 10)
        
        singerLabel.textColor = .gray
        singerLabel.font = .systemFont(ofSize: 10)
    }
}
