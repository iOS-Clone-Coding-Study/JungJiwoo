//
//  MainBannerTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class MainBannerTVC: UITableViewCell {
    static let identifier = "MainBannerTVC"
    
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - UI
extension MainBannerTVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.text = "둘러보기"
    }
}
