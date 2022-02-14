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
        let currentNewsItem = NewsData[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as! NewsTableViewCell
        
        cell.thumbnailImageView.setImage(fromUrl: currentNewsItem.thumbnail)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        
        let dateString = formatter.string(from: currentNewsItem.pubDate)
        
        cell.pubDate.text = dateString
        cell.titleLabel.text = currentNewsItem.title
        cell.categoryLabel.text = currentNewsItem.categories.joined(separator: " • ")
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNewsItem = NewsData[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: true)
        UIApplication.shared.open(urlString: selectedNewsItem.link)
    }
        
}
    

