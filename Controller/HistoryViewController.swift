//
//  HistoryViewController.swift
//  absensi
//
//  Created by Perdi Yansyah on 09/07/23.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "HistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "TabelCell")

       
    }
}

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyDataHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TabelCell", for: indexPath) as? HistoryTableViewCell else {return UITableViewCell()}
        let shop = dummyDataHistory[indexPath.row]
        cell.Img.image = shop.image
        cell.Pt.text = shop.pt
        cell.Alamat.text = shop.alamat
        return cell
    }
}
