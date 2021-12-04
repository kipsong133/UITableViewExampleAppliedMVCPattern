//
//  ViewController.swift
//  UITableViewExampleAppliedMVCPattern
//
//  Created by 김우성 on 2021/12/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let dataModel = TableViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "PhoneBookTableViewCell", bundle: nil), forCellReuseIdentifier: "PhoneBookTableViewCell")
        
        dataModel.addItem(TableViewModel.CellData(name: "김우노", cellPhoneNumber: 1))
        dataModel.addItem(TableViewModel.CellData(name: "이우노", cellPhoneNumber: 2))
        dataModel.addItem(TableViewModel.CellData(name: "박우노", cellPhoneNumber: 3))
        dataModel.addItem(TableViewModel.CellData(name: "최우노", cellPhoneNumber: 4))
        dataModel.addItem(TableViewModel.CellData(name: "정우노", cellPhoneNumber: 5))
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PhoneBookTableViewCell", for: indexPath) as? PhoneBookTableViewCell else { return UITableViewCell() }
        
        if let cellData = dataModel.itemAt(index: indexPath.row) {
            cell.updateUI(cellData: cellData)
        }
        
        return cell
    }
}
