//
//  UpdatePlayListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class UpdatePlayListTVC: UITableViewCell {
    static let identifier = "UpdatePlayListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var updateImageView: UIImageView!
    @IBOutlet var playListTitleLabel: UILabel!
    @IBOutlet var playListCommentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension UpdatePlayListTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "방금 업데이트된 플레이리스트"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        playListTitleLabel.text = "서울 어반 사운드"
        playListTitleLabel.textColor = .black
        playListTitleLabel.font = .systemFont(ofSize: 15)
        
        playListCommentLabel.text = "세계적인 트렌드를 빠르게 흡수하여 독보적인 문화를 만들어 가다."
        playListCommentLabel.textColor = .gray
        playListCommentLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
