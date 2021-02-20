//
//  RequestHistoryViewController.swift
//  Project
//
//  Created by 苑伟 on 2021/2/20.
//

import UIKit

class RequestHistoryViewController: UIViewController {

    var timeArray = [SaveRequest]()

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.backgroundColor = .white
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "调用历史"
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        
        if let array = SaveRequest.getData() {
            self.timeArray = array
            self.tableView.reloadData()
        }

    }

}


extension RequestHistoryViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.selectionStyle = .none
        if timeArray.count > 0 {
            cell.textLabel?.text = "请求时间：\(timeArray[indexPath.row].dateTime!)"
        }
        return cell
    }
}
