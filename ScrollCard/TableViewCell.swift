//
//  TableViewCell.swift
//  ScrollCard
//
//  Created by 孙继桐 on 2018/3/5.
//  Copyright © 2018年 Tony. All rights reserved.
//

import Foundation
import UIKit

enum TableCellType : Int {
    case TableCellWithNib = 1
    case TableCellWithNoNib
}

extension UITableViewCell{
    class func cellWithTableView(tableView: UITableView,type: TableCellType)->Any{
        let className = NSStringFromClass(self.classForCoder())
        let nib = UINib.init(nibName: className, bundle: Bundle.main)
        
        if type == .TableCellWithNib {
            tableView.register(nib, forCellReuseIdentifier: className)
        }
        
        if type == .TableCellWithNoNib {
            tableView.register(self.classForCoder(), forCellReuseIdentifier: className)
        }
        
        
        return tableView.dequeueReusableCell(withIdentifier: className) as Any
    }
}
