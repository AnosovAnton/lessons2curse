//
//  Heart.swift
//  ClientVK
//
//  Created by spector.rebop on 19.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class LikeControl: UIControl {
    
private var count: Int = 0
private let countLabel = UILabel()
private let myheart = UIImageView()
override init(frame: CGRect) {
super.init(frame: frame)
      
addSubview(countLabel)
addSubview(myheart)

        myheart.isUserInteractionEnabled = true
let gesture = UITapGestureRecognizer(target: self, action: #selector(onHeartTapped(_:)))
        myheart.addGestureRecognizer(gesture)
updateView()
    }
private func updateView() {
        countLabel.text = "\(count)"
if isSelected {
            myheart.image = UIImage(systemName: "heart.fill")
        }
else {
           myheart.image = UIImage(systemName: "heart")
        }
    }
@objc func onHeartTapped(_ gesture: UIGestureRecognizer) {
        isSelected = !isSelected
        count += isSelected ? 1 : -1
updateView()
sendActions(for: .valueChanged)
    }
required init?(coder: NSCoder) {
fatalError("init(coder:) has not been implemented")
    }
}
