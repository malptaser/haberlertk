//
//  News.swift
//  HaberlerBB
//
//  Created by BB-MP on 11.02.2022.
//

import Foundation


// MARK: - Properties
struct News: Codable {
    var title: String
    var pubDate: Date
    var link: String
    var thumbnail: String
    var categories: [String]
    
}

