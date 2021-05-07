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
