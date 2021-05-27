//
//  RecentMusicListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class RecentMusicListTVC: UITableViewCell {
    static let identifier = "RecentMusicListTVC"
    
    let title = ["AZEB - EP", "View - Single", "co - EP", "WONDER - EP", "Summer in Snow - Single", "Cherry Coke (feat. Osamu)"]
    let singer = ["Mereba", "최첼로", "오존", "G R I O", "baewonlee", "장가이"]
    let image_name = ["azeb", "view_single", "co_ep", "wonder_ep", "summer_in_snow", "cherry_coke"]

    let title2 = ["sunset blvd. - EP", "다섯 마디 - EP", "Destination - Single", "GEMINI - Single", "HAPPEN", "SOUR"]
    let singer2 = ["John OFA Rhee", "정승환", "리코", "AB6IX", "헤이즈", "Olivia Rodrigo"]
    let image_name2 = ["sunset_blvd", "five_ep", "destination_single", "gemini_single", "happen", "sour"]
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var recentCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
        print("title.count")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- CollectionView
extension RecentMusicListTVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return title.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecentMusicListCVC.identifier, for: indexPath) as? RecentMusicListCVC else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(image_name[indexPath.row]).png")
        cell.musicTitleLabel?.text = title[indexPath.row]
        cell.musicSingerLabel?.text = singer[indexPath.row]
        cell.musicImageView?.image = img
        let img2 = UIImage(named: "\(image_name2[indexPath.row]).png")
        cell.music2TitleLabel?.text = title2[indexPath.row]
        cell.music2SingerLabel?.text = singer2[indexPath.row]
        cell.music2ImageView?.image = img2
        
        return cell
    }
}

extension RecentMusicListTVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.size.width/2 - 10
        let height = collectionView.frame.size.height - 5
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
}

// MARK:- UI
extension RecentMusicListTVC {
    func setUI() {
        setLabel()
        setButton()
        setCollectionView()
        setCollectionViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "최신곡"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
    
    func setCollectionView() {
        recentCollectionView.delegate = self
        recentCollectionView.dataSource = self
    }
    
    func setCollectionViewNib() {
        let nibName = UINib(nibName: "RecentMusicListCVC", bundle: nil)
        recentCollectionView.register(nibName, forCellWithReuseIdentifier: RecentMusicListCVC.identifier)
    }
}
