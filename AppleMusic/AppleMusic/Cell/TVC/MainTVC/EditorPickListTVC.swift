//
//  EditorPickListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class EditorPickListTVC: UITableViewCell {
    static let identifier = "EditorPickListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var editorPickImageView: UIImageView!
    @IBOutlet var musicTitleLabel: UILabel!
    @IBOutlet var musicSingerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension EditorPickListTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "에디터의 추천"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        musicTitleLabel.text = "GUESS WHO - EP"
        musicTitleLabel.textColor = .black
        musicTitleLabel.font = .systemFont(ofSize: 10)
        
        musicSingerLabel.text = "ITZY"
        musicSingerLabel.textColor = .gray
        musicSingerLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
