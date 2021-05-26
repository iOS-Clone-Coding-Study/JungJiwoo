//
//  MoreContentsTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class MoreContentsTVC: UITableViewCell {
    static let identifier = "MoreContentsTVC"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var moreContentsTableView: UITableView!
    
    let moreContents: [String] = ["카테고리 둘러보기", "인기 차트", "휴식", "대표곡", "키즈 & 패밀리"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- TableView
extension MoreContentsTVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ContentsTVC.identifier) as?
                ContentsTVC else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}

// MARK:- UI
extension MoreContentsTVC {
    func setUI() {
        setLabel()
        setTableView()
        setTableViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "콘텐츠 더 보기"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    func setTableView() {
        moreContentsTableView.delegate = self
        moreContentsTableView.dataSource = self
    }
    
    func setTableViewNib() {
        let contentsNib = UINib(nibName: "ContentsTVC", bundle: nil)
        moreContentsTableView.register(contentsNib, forCellReuseIdentifier: ContentsTVC.identifier)
    }
}
