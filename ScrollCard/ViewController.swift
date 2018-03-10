//
//  ViewController.swift
//  ScrollCard
//
//  Created by Tony on 2017/9/26.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func titleBtnClicked(_ sender: UIButton) {
        
        let courseCardView = CourseCardView()
        courseCardView.models = dataArr()
        courseCardView.selectedIndex = 5
        courseCardView.show()
        courseCardView.selectedCourseClosure = { course in
            self.titleBtn.setTitle(course.name, for: .normal)
        }
    }
    
    func dataArr() -> [CourseCard] {
        let cards:[String] = ["东", "南", "西", "北", "中", "发", "白", "一筒", "九筒", "一索","九索","一万","九万"]
        var models:[CourseCard] = []
        for i in 0 ..< cards.count {
            let model = CourseCard()
            model.name = cards[i]
            model.image = UIImage(named: "img_book\(i % 3)")
            models.append(model)
        }
        
        return models
    }
}

