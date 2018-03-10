
//
//  CollectionViewCell.swift
//  ScrollCard
//
//  Created by 孙继桐 on 2018/3/5.
//  Copyright © 2018年 Tony. All rights reserved.
//

import Foundation
import UIKit

enum CollectionCellType : Int {
    case CollectionCellWithNib = 1
    case CollectionCellWithNoNib
}

extension UICollectionViewCell{
    class func cellWithCollectionView(collectionView: UICollectionView,indexPath: NSIndexPath,type: CollectionCellType)->Any{
        let className = String(describing: self.classForCoder())
      
        let nib = UINib(nibName: className, bundle: nil) 
        
        if type == .CollectionCellWithNib {
            collectionView.register(nib, forCellWithReuseIdentifier: className)
        }
        
        if type == .CollectionCellWithNoNib {
            collectionView.register(self.classForCoder(), forCellWithReuseIdentifier: className)
            
        }
        
        return collectionView.dequeueReusableCell(withReuseIdentifier: className, for: indexPath as IndexPath)
    }
}
