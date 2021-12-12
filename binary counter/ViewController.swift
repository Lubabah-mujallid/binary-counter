//
//  ViewController.swift
//  binary counter
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var count = 0
    @IBOutlet weak var labelHome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        labelHome.text = "000"
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.labelCell.text = "\(pow(10, indexPath.row))"
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

 extension ViewController: CustomCellDelegate{
    func plus(num: Int) {
        count += num
        print(count)
        labelHome.text = "\(count)"
    }
    
    func minus(num: Int) {
        count -= num
        print(count)
        labelHome.text = "\(count)"
    }
}
