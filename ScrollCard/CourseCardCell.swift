//
//  CardCell.swift
//  ScrollCard
//
//  Created by Tony on 2017/9/26.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class CourseCardCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
 
    var courseCard:CourseCard?{
       
        didSet{

            guard let dataInfo = self.courseCard else {
                return
            }
            setData(dataInfo)
            
        }
    }
    
    private func setData(_ courseCard:CourseCard){
        self.imgView.image = courseCard.image
        self.nameLabel.text = courseCard.name
    }
    
}
