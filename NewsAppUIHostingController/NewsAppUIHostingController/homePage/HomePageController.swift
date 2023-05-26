//
//  ViewController.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import UIKit
import SwiftUI
import RxSwift
import RxCocoa
class HomePageController: UIViewController {

      
  
    
    private let homePageView = HomePageView()
    private let disposeBag = DisposeBag()
    private lazy var articles: Observable<[Articles]> = {
      let article1 = Articles(source: SourceData(id: "testid", name: "testName"), author: "testAuthor", title: "testTile", description: "testDescription", urlToImage: "testUrlImage", publishedAt: "testpublishe", content: "testContent")
        
        return .just([article1])
      }()

    override func viewDidLoad() {
        super.viewDidLoad()
         view = homePageView


        articles
            .bind(to: homePageView.tableView
            .rx
            .items(cellIdentifier: "contactCell")) { row, element, cell in
                cell.contentConfiguration = UIHostingConfiguration {
                    NewsCell(article: element)
                }
                
          }
          .disposed(by: disposeBag) 
    }
}

