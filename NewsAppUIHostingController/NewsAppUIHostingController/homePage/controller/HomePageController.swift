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
  
    
    private var viewModel = HomePageViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
         view = homePageView

        viewModel.getArticleList(target: .unitedStates)
        
        viewModel.newsList.bind(to: homePageView.tableView
            .rx
            .items(cellIdentifier: "contactCell")) { row, element, cell in
                cell.contentConfiguration = UIHostingConfiguration {
                    NewsCell(article: element)
                }
                
          }
          .disposed(by: disposeBag)
        
        
        homePageView.tableView.rx.modelSelected(News.self)
            .subscribe(onNext : { [self] news in
                let detailView = UIHostingController(rootView: DetailsView(news: news))
                self.present(detailView, animated: true)
                if let selectedRowIndexPath = homePageView.tableView.indexPathForSelectedRow {
                    homePageView.tableView.deselectRow(at: selectedRowIndexPath, animated: true)
                }
            }).disposed(by: disposeBag)
    }
}

