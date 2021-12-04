//
//  TableViewModel.swift
//  UITableViewExampleAppliedMVCPattern
//
//  Created by 김우성 on 2021/12/04.
//

import Foundation

class TableViewModel {
    typealias CellData = PeopleInfo
    
    private var storage: [CellData]
    
    var count: Int {
        storage.count
    }
    
    init() {
        self.storage = [CellData]()
    }
    
    public func addItem(_ value: CellData) {
        self.storage.append(value)
    }
    
    public func itemAt(index: Int) -> CellData? {
        guard count > index else { return nil }
        return self.storage[index]
    }
}
