//
//  HomeController.swift
//  CarSale
//
//  Created by Sabyrzhan Tynybayev on 06.05.2021.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var messagesButton: UIButton!
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var carMakesCollectionView: UICollectionView!
    
    let badgeSize: CGFloat = 15
    let badgeTag = 9830384
    var homeBannerDataSource: HomeBannerCollectionViewDataSource?
    var carMakesDataSource: CarMakesCollectionViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeBannerDataSource = HomeBannerCollectionViewDataSource()
        self.carMakesDataSource = CarMakesCollectionViewDataSource();
        self.bannerCollectionView.dataSource = homeBannerDataSource;
        self.carMakesCollectionView.dataSource = carMakesDataSource;

        // Do any additional setup after loading the view.
        messagesButton.backgroundColor = .white
        messagesButton.layer.cornerRadius = messagesButton.bounds.width / 2;
        let badge = badgeLabel(withCount: 10);
        messagesButton.addSubview(badge);
        
        NSLayoutConstraint.activate([
                badge.leftAnchor.constraint(equalTo: messagesButton.leftAnchor, constant: 20),
                badge.topAnchor.constraint(equalTo: messagesButton.topAnchor, constant: 4),
                badge.widthAnchor.constraint(equalToConstant: badgeSize),
                badge.heightAnchor.constraint(equalToConstant: badgeSize)
            ])
    }
    
    func badgeLabel(withCount count: Int) -> UILabel {
        let badgeCount = UILabel(frame: CGRect(x: 0, y: 0, width: badgeSize, height: badgeSize))
        badgeCount.translatesAutoresizingMaskIntoConstraints = false
        badgeCount.tag = badgeTag
        print(badgeCount.bounds.size.width, " ", badgeCount.bounds.size.width);
        badgeCount.layer.cornerRadius = badgeCount.bounds.size.width / 2
        badgeCount.textAlignment = .center
        badgeCount.layer.masksToBounds = true
        badgeCount.textColor = .white
        badgeCount.font = badgeCount.font.withSize(10)
        badgeCount.backgroundColor = .systemRed
        badgeCount.text = String(count)
        return badgeCount
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
