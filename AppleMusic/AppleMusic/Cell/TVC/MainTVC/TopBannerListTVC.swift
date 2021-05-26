//
//  TopBannerListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/27.
//

import UIKit

class TopBannerListTVC: UITableViewCell {
    static let identifier = "TopBannerListTVC"
    
    let title = ["추천 플레이리스트", "지금 듣기", " ", "최신 앨범"]
    let bannerTitle = ["오늘의 히트곡", "co - EP", "Loops", "SOUR"]
    let category = ["Apple Music 팝", "오존", "Apple Music 일렉트로닉", "Olivia Rodrigo"]
    let image_name = ["today_hit", "now_playing", "new_trend", "new_album"]
    
    @IBOutlet var topBannerCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- CollctionView
extension TopBannerListTVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return title.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerListCVC.identifier, for: indexPath) as? BannerListCVC else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(image_name[indexPath.row]).PNG")
        cell.titleLabel?.text = title[indexPath.row]
        cell.bannerTitleLabel?.text = bannerTitle[indexPath.row]
        cell.categoryTitleLabel?.text = category[indexPath.row]
        cell.bannerImageView?.image = img
        
        return cell
    }
}

extension TopBannerListTVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.size.width - 50
        let height = collectionView.frame.size.height - 5
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
}

// MARK:- UI
extension TopBannerListTVC {
    func setUI() {
        setCollectionView()
        setCollectionViewNib()
    }
    
    func setCollectionView() {
        topBannerCollectionView.delegate = self
        topBannerCollectionView.dataSource = self
    }
    
    private func setCollectionViewNib() {
        let nibName = UINib(nibName: "BannerListCVC", bundle: nil)
        topBannerCollectionView.register(nibName, forCellWithReuseIdentifier: BannerListCVC.identifier)
    }
}
