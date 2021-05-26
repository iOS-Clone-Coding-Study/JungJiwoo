//
//  InterviewListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class InterviewListTVC: UITableViewCell {
    static let identifier = "InterviewListTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllbutton: UIButton!
    @IBOutlet var interviewImageView: UIImageView!
    @IBOutlet var interviewTitleLabel: UILabel!
    @IBOutlet var interviewWhoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- UI
extension InterviewListTVC {
    func setUI() {
        setLabel()
        setButton()
    }
    
    func setLabel() {
        titleLabel.text = "아티스트 인터뷰"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        interviewTitleLabel.text = "Chris Rock & 21 Savage on Spiral: From the Book of Song"
        interviewTitleLabel.textColor = .black
        interviewTitleLabel.font = .systemFont(ofSize: 10)
        
        interviewWhoLabel.text = "21 Savage"
        interviewWhoLabel.textColor = .gray
        interviewWhoLabel.font = .systemFont(ofSize: 10)
    }
    
    func setButton() {
        showAllbutton.setTitle("전체 보기", for: .normal)
        showAllbutton.setTitleColor(.red, for: .normal)
    }
}
