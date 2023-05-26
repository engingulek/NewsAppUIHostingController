//
//  HomePageViewModel.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import Foundation
import RxSwift
import RxCocoa

class HomePageViewModel {
    let serviceManager = ServiceManager()
    var newsList : BehaviorRelay<[News]> = .init(value: [])
    
    
    func getArticleList(target:Network){
        serviceManager.fetch(target: target) { (response:Result<[Articles]?,Error>) in
            switch response {
                
            case .success(let list):
                self.newsList.accept(list!.map(News.init))
            case .failure(let error):
                self.newsList.accept([])
                print(error)
            }
        }
    }
}




struct News {
    var news : Articles
    

    var author: String {
        news.author!
    }
    var title: String {
        news.title!
    }
    var description:String {
        news.description ?? "Description"
    }
    var urlToImage:String {
        news.urlToImage!
    }
    var publishedAt:String{
        news.publishedAt!
    }
    var content:String{
        news.content!
    }
}
