//
//  CarMakesCollectionViewCell.swift
//  CarSale
//
//  Created by Sabyrzhan Tynybayev on 14.05.2021.
//

import UIKit

class CarMakesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var carMakeButton: UIButton!
    
    var text: String = "" {
        didSet {
            carMakeButton.titleLabel?.text = text
        }
    }
    
    var image: UIImage = UIImage.init() {
        didSet {
            carMakeButton.imageView?.image = image
        }
    }
    
    let carMakes: [[String]] = [
        ["Alfa Romeo", "car-make-alfa"],
        ["Nissan", "car-make-nissan"],
        ["Lincoln", "car-make-lincoln"],
        ["Mazda", "car-make-mazda"]
    ];
    
    func updateCarMakeButton() {
        carMakeButton.backgroundColor = .white
        carMakeButton.layer.cornerRadius = 10
        carMakeButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func getCarMake(with index: Int) -> [String] {
        return carMakes[index]
    }
}

class CarMakesCollectionViewDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate {
        
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarMakesCollectionViewCell", for: indexPath) as! CarMakesCollectionViewCell
        let index = indexPath.item % 4
        print("Index: \(index) ")
        let carMake = cell.getCarMake(with: index)
        cell.text = carMake[0]
        cell.image = UIImage.init(named: carMake[1])!
        cell.updateCarMakeButton()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
}
