//
//  ForCityChartTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class ForCityChartTVC: UITableViewCell {
    static let identifier = "ForCityChartTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var cityImageView: UIImageView!
    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var fromCompanyNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension ForCityChartTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "도시별 차트"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        cityNameLabel.text = "오늘의 TOP 25: 서울"
        cityNameLabel.textColor = .black
        cityNameLabel.font = .systemFont(ofSize: 10)
        
        fromCompanyNameLabel.text = "Apple Music"
        fromCompanyNameLabel.textColor = .gray
        fromCompanyNameLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
}
