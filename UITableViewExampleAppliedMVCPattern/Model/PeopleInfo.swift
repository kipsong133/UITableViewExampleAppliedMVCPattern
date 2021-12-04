//
//  PeopleInfo.swift
//  UITableViewExampleAppliedMVCPattern
//
//  Created by 김우성 on 2021/12/04.
//

import Foundation

struct PeopleInfo {
    var name: String
    var cellPhoneNumber: Int
    
    init(name: String, cellPhoneNumber: Int) {
        self.name = name
        self.cellPhoneNumber = cellPhoneNumber
    }
}
