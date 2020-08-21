//
//  MyCollectionViewCell.swift
//  ClientVK
//
//  Created by spector.rebop on 08.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var myPicture: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var myheart: UIImageView!
    
    let likeControl = LikeControl()
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        contentView.addSubview(likeControl)
        
    }
    
}


        
        
      
    







