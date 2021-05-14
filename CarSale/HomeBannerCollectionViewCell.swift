//
//  HomeBannerCollectionViewCell.swift
//  CarSale
//
//  Created by Sabyrzhan Tynybayev on 07.05.2021.
//

import UIKit

class HomeBannerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var bannerImageView: UIImageView!
    
    var imageSet: Bool = false {
        didSet {
            bannerImageView.image = UIImage.init(named: "home-slider-image")
        }
    }
}

class HomeBannerCollectionViewDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate {
        
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeBannerCollectionViewCell", for: indexPath) as! HomeBannerCollectionViewCell
        cell.imageSet = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
}
