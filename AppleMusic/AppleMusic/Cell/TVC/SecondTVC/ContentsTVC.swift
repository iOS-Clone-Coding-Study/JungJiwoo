//
//  ContentsTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class ContentsTVC: UITableViewCell {
    static let identifier = "ContentsTVC"
    
    @IBOutlet var contentsLabel: UILabel!
    @IBOutlet var clickButton: UIButton!
    
    let moreContents: [String] = ["카테고리 둘러보기", "인기 차트", "휴식", "대표곡", "키즈 & 패밀리"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension ContentsTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        contentsLabel.textColor = .red
        contentsLabel.font = .systemFont(ofSize: 15)
    }
    
    func setButton() {
        clickButton.tintColor = .gray
    }
}
