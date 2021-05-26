//
//  HealingMusicTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class HealingMusicTVC: UITableViewCell {
    static let identifier = "HealingMusicTVC"
    
    let title = ["매일 휴가처럼", "여유로운 컨트리 음악", "It's Lit!!!", "여름 핫 사운드", "다시 듣는 댄스 뮤직", "키즈 댄스 파티", "온종일 즐기는 댄스 파티", "전성기 힙합"]
    let subTitle = ["Apple Music", "Apple Music 컨트리", "Apple Music 힙합/랩", "Apple Music 팝", "Apple Music 댄스", "Apple Music 키즈 & 패밀리", "Apple Music 댄스", "87년과 92년 사이의 힙합 걸작"]
    let image_name = ["every_vaca", "free_country", "it's_lit", "summer_hot", "dance_music", "kids_dance", "all_day_dance", "hiphop"]
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var healingCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- CollectionView
extension HealingMusicTVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return title.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HealingListCVC.identifier, for: indexPath) as? HealingListCVC else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(image_name[indexPath.row]).png")
        cell.titleLabel?.text = title[indexPath.row]
        cell.subTitleLabel?.text = subTitle[indexPath.row]
        cell.healingImageView?.image = img
        
        return cell
    }
}

extension HealingMusicTVC: UICollectionViewDelegateFlowLayout {
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

// MARK: - UI
extension HealingMusicTVC {
    func setUI() {
        setLabel()
        setButton()
        setCollectionView()
        setCollectionViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "긴장을 풀어주는 음악"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
    
    func setCollectionView() {
        healingCollectionView.delegate = self
        healingCollectionView.dataSource = self
    }
    
    func setCollectionViewNib() {
        let nibName = UINib(nibName: "HealingListCVC", bundle: nil)
        healingCollectionView.register(nibName, forCellWithReuseIdentifier: HealingListCVC.identifier)
    }
}
