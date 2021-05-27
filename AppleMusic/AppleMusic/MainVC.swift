//
//  MainVC.swift
//  AppleMusic
//
//  Created by jjuyaa on 2021/05/20.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet var mainTableView: UITableView!
    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
}

// MARK: - TableView
extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainBannerTVC.identifier) as? MainBannerTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TopBannerListTVC.identifier) as? TopBannerListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: OurSpotListTVC.identifier) as? OurSpotListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 3 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MoodMusicTVC.identifier) as? MoodMusicTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 4 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HealingMusicTVC.identifier) as? HealingMusicTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 5 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HotRecentMusicTVC.identifier) as? HotRecentMusicTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 6 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RecentMusicListTVC.identifier) as? RecentMusicListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 7 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RadioListTVC.identifier) as? RadioListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 8 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ForCityChartTVC.identifier) as? ForCityChartTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 9 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TopHundredListTVC.identifier) as? TopHundredListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 10 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: UpdatePlayListTVC.identifier) as? UpdatePlayListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 11 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: EditorPickListTVC.identifier) as? EditorPickListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 12 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InterviewListTVC.identifier) as? InterviewListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 13 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ReleasePlanListTVC.identifier) as? ReleasePlanListTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 14 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MoreContentsTVC.identifier) as? MoreContentsTVC else {
                return UITableViewCell()
            }
            cell.selectionStyle = .none
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 70
        } else if indexPath.row == 1 {
            return 230
        } else if indexPath.row == 2 {
            return 240
        } else if indexPath.row == 3 {
            return 155
        } else if indexPath.row == 4 {
            return 240
        } else if indexPath.row == 5 {
            return 210
        } else if indexPath.row == 6 {
            return 430
        } else if indexPath.row == 7 {
            return 165
        } else if indexPath.row == 8 {
            return 230
        } else if indexPath.row == 9 {
            return 250
        } else if indexPath.row == 10 {
            return 450
        } else if indexPath.row == 11 {
            return 250
        } else if indexPath.row == 12 {
            return 150
        } else if indexPath.row == 13 {
            return 250
        } else if indexPath.row == 14 {
            return 230
        } else {
            return 100
        }
    }
}

// MARK: - UI
extension MainVC {
    private func setUI() {
        setLabel()
        setTableView()
        setTableViewNib()
    }
    
    func setLabel() {
        titleLabel.text = "재생 중이 아님"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 15)
    }
    
    private func setTableView() {
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
    func setTableViewNib() {
        let bannerNib = UINib(nibName: "MainBannerTVC", bundle: nil)
        mainTableView.register(bannerNib, forCellReuseIdentifier: MainBannerTVC.identifier)
        
        let bannerListNib = UINib(nibName: "TopBannerListTVC", bundle: nil)
        mainTableView.register(bannerListNib, forCellReuseIdentifier: TopBannerListTVC.identifier)
        
        let spotNib = UINib(nibName: "OurSpotListTVC", bundle: nil)
        mainTableView.register(spotNib, forCellReuseIdentifier: OurSpotListTVC.identifier)
        
        let moodNib = UINib(nibName: "MoodMusicTVC", bundle: nil)
        mainTableView.register(moodNib, forCellReuseIdentifier: MoodMusicTVC.identifier)
        
        let healingNib = UINib(nibName: "HealingMusicTVC", bundle: nil)
        mainTableView.register(healingNib, forCellReuseIdentifier: HealingMusicTVC.identifier)
        
        let hotNib = UINib(nibName: "HotRecentMusicTVC", bundle: nil)
        mainTableView.register(hotNib, forCellReuseIdentifier: HotRecentMusicTVC.identifier)
        
        let recentNib = UINib(nibName: "RecentMusicListTVC", bundle: nil)
        mainTableView.register(recentNib, forCellReuseIdentifier: RecentMusicListTVC.identifier)
        
        let radioNib = UINib(nibName: "RadioListTVC", bundle: nil)
        mainTableView.register(radioNib, forCellReuseIdentifier: RadioListTVC.identifier)
        
        let cityChartNib = UINib(nibName: "ForCityChartTVC", bundle: nil)
        mainTableView.register(cityChartNib, forCellReuseIdentifier: ForCityChartTVC.identifier)
        
        let topHundredNib = UINib(nibName: "TopHundredListTVC", bundle: nil)
        mainTableView.register(topHundredNib, forCellReuseIdentifier: TopHundredListTVC.identifier)
        
        let updateNib = UINib(nibName: "UpdatePlayListTVC", bundle: nil)
        mainTableView.register(updateNib, forCellReuseIdentifier: UpdatePlayListTVC.identifier)
        
        let editorNib = UINib(nibName: "EditorPickListTVC", bundle: nil)
        mainTableView.register(editorNib, forCellReuseIdentifier: EditorPickListTVC.identifier)
        
        let interviewNib = UINib(nibName: "InterviewListTVC", bundle: nil)
        mainTableView.register(interviewNib, forCellReuseIdentifier: InterviewListTVC.identifier)
        
        let releaseNib = UINib(nibName: "ReleasePlanListTVC", bundle: nil)
        mainTableView.register(releaseNib, forCellReuseIdentifier: ReleasePlanListTVC.identifier)
        
        let moreNib = UINib(nibName: "MoreContentsTVC", bundle: nil)
        mainTableView.register(moreNib, forCellReuseIdentifier: MoreContentsTVC.identifier)
    }
}
