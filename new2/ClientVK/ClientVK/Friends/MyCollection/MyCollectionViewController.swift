//
//  MyCollectionViewController.swift
//  ClientVK
//
//  Created by spector.rebop on 09.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MyCollectionViewCellKey"

class MyCollectionViewController: UICollectionViewController {
    
    
    var selectedModel: Friend?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MyCollectionViewCell
        cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .lightGray
        
        let image = UIImage(named: "image1")
        cell.myPicture.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        cell.myPicture.image = UIImage(named: "image1")
        
        // Configure the cell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: 100, height: 100)
    }
    
    
    
    
}
