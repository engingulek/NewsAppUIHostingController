//
//  Articles.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import Foundation

class SourceData : Codable {
    let id : String?
    let name : String?
    init(id: String?, name: String?) {
        self.id = id
        self.name = name
    }
}

class Articles : Codable {
    let source : SourceData?
    let author: String?
    let title: String?
    let description:String?
    let urlToImage:String?
    let publishedAt:String?
    let content:String?
    
    init(source: SourceData?, author: String?, title: String?, description: String?, urlToImage: String?, publishedAt: String?, content: String?) {
        self.source = source
        self.author = author
        self.title = title
        self.description = description
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
    }
    
}
