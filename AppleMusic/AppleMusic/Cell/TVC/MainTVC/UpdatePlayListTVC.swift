//
//  UpdatePlayListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class UpdatePlayListTVC: UITableViewCell {
    static let identifier = "UpdatePlayListTVC"
    
    let title = ["편안한 K-Pop", "R&B Now", "Rap Life", "오늘의 히트곡", "A-List: K-Pop"]
    let comment = ["여유롭고 빈티지한 사운드의 K-Pop과 함께하는 감성 가득한 하루", "거부할 수 없는 매혹적인 사운드! 메인스트림을 장악한 인기 절정 R&B 뮤직", "Nicki Minaj와 Drake, Lil Wayne의 콜라보곡 'Seeing Green'", "가슴을 먹먹하게 만드는 Billie Eilish표 발라드 'Your Power'", "Apple Music 에디터가 엄선해 수시로 업데이트하는 K-Pop 인기곡"]
    let image_name = ["relax_kpop", "r&b_now", "rap_life_", "today_s_hit", "alist_kpop"]
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var updateCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- CollectionView
extension UpdatePlayListTVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return title.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UpdatePlaylistCVC.identifier, for: indexPath) as? UpdatePlaylistCVC else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(image_name[indexPath.row]).png")
        cell.titleLabel?.text = title[indexPath.row]
        cell.commentLabel?.text = comment[indexPath.row]
        cell.updateImageView?.image = img
        
        return cell
    }
}

extension UpdatePlayListTVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.size.width - 15
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
extension UpdatePlayListTVC {
    func setUI() {
        setLabel()
        setButton()
        setCollectionView()
        setCollectionViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "방금 업데이트된 플레이리스트"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
    
    func setCollectionView() {
        updateCollectionView.delegate = self
        updateCollectionView.dataSource = self
    }
    
    func setCollectionViewNib() {
        let nibName = UINib(nibName: "UpdatePlaylistCVC", bundle: nil)
        updateCollectionView.register(nibName, forCellWithReuseIdentifier: UpdatePlaylistCVC.identifier)
    }
}
