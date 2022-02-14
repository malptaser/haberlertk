//
//  NewsTableViewController.swift
//  HaberlerBB
//
//  Created by BB-MP on 11.02.2022.
//

import UIKit

class NewsTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsData.count
    }
}
