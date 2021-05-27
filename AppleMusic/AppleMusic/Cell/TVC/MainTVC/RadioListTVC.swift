//
//  RadioListTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class RadioListTVC: UITableViewCell {
    static let identifier = "RadioListTVC"
    
    let title = ["Apple Music 1", "Apple Music Hits", "Rap Life Radio with Ebro Darden", "Today's Country Radio with Kelleigh Bannen", "Pure Throwback Radio with Nicole Sky", "Back Porch Country Radio with Nick Hoffman", "iDale Play! Radio with Sandra Pena", "R&B Now Radio with Nadeska Alexis"]
    let image_name = ["apple_music1", "apple_music_hits", "with_ebro", "with_kelleigh", "pure_throwback", "back_porch", "with_sandra", "with_nadeska"]
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var radioCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- CollectionView
extension RadioListTVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return title.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RadioListCVC.identifier, for: indexPath) as? RadioListCVC else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(image_name[indexPath.row]).png")
        cell.titleLabel?.text = title[indexPath.row]
        cell.radioImageView?.image = img
        
        return cell
    }
}

extension RadioListTVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.size.width/2 - 40
        let height = collectionView.frame.size.height - 5
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
}

// MARK:- UI
extension RadioListTVC {
    func setUI() {
        setLabel()
        setCollectionView()
        setCollectionViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "Apple Music 라디오"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    func setCollectionView() {
        radioCollectionView.delegate = self
        radioCollectionView.dataSource = self
    }
    
    func setCollectionViewNib() {
        let nibName = UINib(nibName: "RadioListCVC", bundle: nil)
        radioCollectionView.register(nibName, forCellWithReuseIdentifier: RadioListCVC.identifier)
    }
}
