//
//  TopHundredListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class TopHundredListTVC: UITableViewCell {
    static let identifier = "TopHundredListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var topHundredImageView: UIImageView!
    @IBOutlet var topListTitleLabel: UILabel!
    @IBOutlet var companyNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension TopHundredListTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "오늘의 TOP 100"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        topListTitleLabel.text = "오늘의 TOP 100: 글로벌"
        topListTitleLabel.textColor = .black
        topListTitleLabel.font = .systemFont(ofSize: 10)
        
        companyNameLabel.text = "Apple Music"
        companyNameLabel.textColor = .gray
        companyNameLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
