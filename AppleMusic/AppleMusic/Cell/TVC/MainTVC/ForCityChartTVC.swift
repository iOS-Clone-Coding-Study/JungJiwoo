//
//  ForCityChartTVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class ForCityChartTVC: UITableViewCell {
    static let identifier = "ForCityChartTVC"
    
    let title = ["오늘의 TOP 25: 서울", "오늘의 TOP 25: 부산", "오늘의 TOP 25: 뉴욕", "오늘의 TOP 25: 런던", "오늘의 TOP 25: 로스앤젤레스", "오늘의 TOP 25: 파리", "오늘의 TOP 25: 베를린", "오늘의 TOP 25: 도쿄"]
    let subTitle = ["Apple Music", "Apple Music", "Apple Music", "Apple Music", "Apple Music", "Apple Music", "Apple Music", "Apple Music"]
    let image_name = ["seoul", "busan", "newYork", "london", "losangeles", "paris", "berlin", "tokyo"]
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var showAllButton: UIButton!
    @IBOutlet var cityCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK:- CollectionView
extension ForCityChartTVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return title.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CityChartCVC.identifier, for: indexPath) as? CityChartCVC else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(image_name[indexPath.row]).png")
        cell.titleLabel?.text = title[indexPath.row]
        cell.subTitleLabel?.text = subTitle[indexPath.row]
        cell.cityImageView?.image = img
        
        return cell
    }
}

extension ForCityChartTVC: UICollectionViewDelegateFlowLayout {
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
extension ForCityChartTVC {
    func setUI() {
        setLabel()
        setButton()
        setCollectionView()
        setCollectionViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "도시별 차트"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    func setButton() {
        showAllButton.setTitle("전체 보기", for: .normal)
        showAllButton.setTitleColor(.red, for: .normal)
    }
    
    func setCollectionView() {
        cityCollectionView.delegate = self
        cityCollectionView.dataSource = self
    }
    
    func setCollectionViewNib() {
        let nibName = UINib(nibName: "CityChartCVC", bundle: nil)
        cityCollectionView.register(nibName, forCellWithReuseIdentifier: CityChartCVC.identifier)
    }
}
