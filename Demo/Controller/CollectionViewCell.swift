//
//  CollectionViewCell.swift
//  Demo
//
//  Created by Nirmal Chandran on 17/08/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    lazy var img: UIImageView = {
        var img = UIImageView(frame: CGRect(x: 20, y: 80, width: 50, height: 48))
        img.image = UIImage(named: "Profile")
        return img
    }()
    
    lazy var title: UILabel = {
        var title = UILabel(frame: CGRect(x: 10, y: 120, width: contentView.frame.size.width, height: 55))
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(img)
        contentView.addSubview(title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
