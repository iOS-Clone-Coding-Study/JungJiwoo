//
//  ReleasePlanListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class ReleasePlanListTVC: UITableViewCell {
    static let identifier = "ReleasePlanListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var planImageView: UIImageView!
    @IBOutlet var releasePlanTitleLabel: UILabel!
    @IBOutlet var releasePlanSingerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension ReleasePlanListTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "발매 예정"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        releasePlanTitleLabel.text = "Happier Than Ever"
        releasePlanTitleLabel.textColor = .black
        releasePlanTitleLabel.font = .systemFont(ofSize: 10)
        
        releasePlanSingerLabel.text = "Billie Eilish"
        releasePlanSingerLabel.textColor = .gray
        releasePlanSingerLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
