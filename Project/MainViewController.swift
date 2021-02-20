//
//  MainViewController.swift
//  Project
//
//  Created by 苑伟 on 2021/2/20.
//

import UIKit

class MainViewController: UIViewController {
    
    var listArray = [DataModel]()
    var isHasExecute = false
    var timer: Timer!
    var count = 1
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
        view.backgroundColor = .white
        title = "数据"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "history", style: .plain, target: self, action: #selector(requestHistory))
        
        view.addSubview(tableView)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.getData()
        }
        
        if let array = DataModel.getFileData(), let model = array.last {
            model.current_user_url = "最后一条数据     " + model.current_user_url!
            self.listArray.append(model)
        }

    }
    
    func getData() {
        
        let request = URLRequest(url: URL(string: "https://api.github.com/")!)
        URLSession.shared.dataTask(with: request) { ( data, urlRespone, error) in
            if let result = data {
                if let dic = try? JSONSerialization.jsonObject(with: result, options: []) as? [String:Any] {
                    let model = DataModel.dicConvertToModel(dic)
                    model.current_user_url = "\(self.count)     " + model.current_user_url!
                    self.listArray.append(model)
                    DataModel.saveFileData(self.listArray)
                                        
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        self.tableView.scrollToRow(at: IndexPath(row: self.listArray.count - 1, section: 0), at: .bottom, animated: true)
                        if !self.isHasExecute {
                            self.perform(#selector(self.openTimer), with: nil, afterDelay: 5.0)
                        }
                    }
                }
            }
        }.resume()
    }
    
    @objc func openTimer() {
        
        self.timer = Timer(timeInterval: 5.0, target: self, selector: #selector(self.handleTimer), userInfo: nil, repeats: true)
        RunLoop.current.add(self.timer, forMode: .default)
        self.timer.fire()
    }

    @objc func handleTimer() {
        
        let requestModel = SaveRequest()
        requestModel.dateTime = self.getDateTime()
        self.timeArray.append(requestModel)
        SaveRequest.saveData(self.timeArray)

        count += 1
        self.isHasExecute = true
        getData()
    }
    
    func getDateTime() -> String {
        
        let myDateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        return myDateFormatter.string(from: Date())
    }
    
    @objc func requestHistory() {
        
        let vc = RequestHistoryViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}


extension MainViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.selectionStyle = .none
        if listArray.count > 0 {
            cell.textLabel?.text = listArray[indexPath.row].current_user_url
        }
        return cell
    }
}
