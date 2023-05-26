//
//  HomePageView.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import Foundation
import UIKit

final class HomePageView : UIView {
    lazy var tableView : UITableView = {
         let tableView = UITableView()
         tableView.register(UITableViewCell.self, forCellReuseIdentifier: "contactCell")
        
         return tableView
     }()
    
    
    override init(frame: CGRect) {
              super.init(frame: frame)
          configureView()
              
          }
      
      private func configureView(){
          addSubviews()
          viewConstraints()
      }
      
      required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
  }


extension HomePageView {
    private func addSubviews(){
        addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func viewConstraints() {
        
        
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
                tableView.leftAnchor.constraint(equalTo: leftAnchor,constant: 5),
                tableView.rightAnchor.constraint(equalTo: rightAnchor,constant: -5),
                tableView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10),
                tableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            ])
    }
}



