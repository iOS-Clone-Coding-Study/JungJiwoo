//
//  OurSpotListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class OurSpotListTVC: UITableViewCell {
    static let identifier = "OurSpotListTVC"
    
    let title = ["잠을 부르는 소리", "ALT CTRL", "danceXL", "활력 있는 아침을 위한 힙합", "A-List: K-Pop", "오늘의 히트곡", "Rap Life", "잠시 쉬어가기"]
    let subTitle = ["Apple Music 숙면", "Apple Music 얼터너티브", "Apple Music 댄스", "Apple Music 힙합/랩", "Apple Music 팝", "Apple Music 팝", "Apple Music 힙합/랩", "Apple Music"]
    let image_name = ["for_sleeping", "alt_ctrl", "danceXL", "for_morning", "k_pop", "today's_hit", "rap_life", "for_rest"]
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var spotCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- CollectionView
extension OurSpotListTVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return title.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SpotListCVC.identifier, for: indexPath) as? SpotListCVC else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(image_name[indexPath.row]).png")
        cell.titleLabel?.text = title[indexPath.row]
        cell.subTitleLabel?.text = subTitle[indexPath.row]
        cell.spotImageView?.image = img
        
        return cell
    }
}

extension OurSpotListTVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.size.width/2 - 15
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
extension OurSpotListTVC {
    func setUI() {
        setLabel()
        setButton()
        setCollectionView()
        setCollectionViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "믿고 들으세요"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
    
    func setCollectionView() {
        spotCollectionView.delegate = self
        spotCollectionView.dataSource = self
    }
    
    func setCollectionViewNib() {
        let nibName = UINib(nibName: "SpotListCVC", bundle: nil)
        spotCollectionView.register(nibName, forCellWithReuseIdentifier: SpotListCVC.identifier)
    }
}
