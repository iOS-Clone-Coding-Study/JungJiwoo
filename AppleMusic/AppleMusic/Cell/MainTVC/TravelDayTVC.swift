//
//  TravelDayTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class TravelDayTVC: UITableViewCell {
    static let identifier = "TravelDayTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var travelDayImageView: UIImageView!
    @IBOutlet var travelTitleLabel: UILabel!
    @IBOutlet var travelCategoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension TravelDayTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "목요일의 추억 여행"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        travelTitleLabel.text = "다시 듣는 K-Pop"
        travelTitleLabel.textColor = .black
        travelTitleLabel.font = .systemFont(ofSize: 10)
        
        travelCategoryLabel.text = "Apple Music K-Pop"
        travelCategoryLabel.textColor = .gray
        travelCategoryLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
