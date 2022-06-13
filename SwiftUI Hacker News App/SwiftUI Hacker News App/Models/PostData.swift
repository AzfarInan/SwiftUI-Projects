//
//  PostData.swift
//  SwiftUI Hacker News App
//
//  Created by BS851 on 9/6/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
