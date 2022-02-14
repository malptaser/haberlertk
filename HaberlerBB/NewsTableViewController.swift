//
//  NewsTableViewController.swift
//  HaberlerBB
//
//  Created by BB-MP on 11.02.2022.
//
import UIKit

class NewsTableViewController: UITableViewController {
    
    // MARK: - Functions
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            return tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)
   
    }
}
