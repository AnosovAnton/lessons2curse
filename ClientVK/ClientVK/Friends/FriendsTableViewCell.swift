//
//  FriendsTableViewCell.swift
//  ClientVK
//
//  Created by spector.rebop on 08.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    let likeControl = LikeControl()
    
    override func prepareForReuse() {
          super.prepareForReuse()
          
      }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        backgroundColor = .white
        avatarImageView.layer.cornerRadius = 30
        
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(for model: Friend) {
        nameLabel.text = model.name
        ageLabel.text = "\(model.age)"
        avatarImageView.image = UIImage.init(named: model.imageName)
    }
    
}

extension UIView {
    
    /// Радиус гараницы
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue  }
        get { return layer.cornerRadius }
    }
    /// Толщина границы
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    
    /// Смещение тени
    @IBInspectable var shadowOffset: CGSize {
        set { layer.shadowOffset = newValue  }
        get { return layer.shadowOffset }
    }
    /// Прозрачность тени
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue }
        get { return layer.shadowOpacity }
    }
    /// Радиус блура тени
    @IBInspectable var shadowRadius: CGFloat {
        set {  layer.shadowRadius = newValue }
        get { return layer.shadowRadius }
    }
    
    /// Отсекание по границе
    @IBInspectable var _clipsToBounds: Bool {
        set { clipsToBounds = newValue }
        get { return clipsToBounds }
    }
}
