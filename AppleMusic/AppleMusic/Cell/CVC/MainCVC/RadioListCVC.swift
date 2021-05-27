//
//  RadioListCVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class RadioListCVC: UICollectionViewCell {
    static let identifier = "RadioListCVC"
    
    @IBOutlet var radioImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
}

// MARK:- UI
extension RadioListCVC {
    func setUI() {
        setLabel()
    }
    
    func setLabel() {
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 10)
    }
}
