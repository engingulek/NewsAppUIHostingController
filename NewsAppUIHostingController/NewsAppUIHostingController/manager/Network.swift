//
//  Networj.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import Foundation

enum Network {
    case unitedStates

}

extension Network : TargetType {

    
    var baseUrl: String {
        return "https://newsapi.org/v2/top-headlines?country="
    }
    
    var path: String {
        switch self {
        case .unitedStates:
            return "us&apiKey=?"
  
        }
    }
    
    var method: AlamofireMethod {
        switch self {
        case .unitedStates:
            return .get
      
        }
    }
    
    var requestType: RequestType {
        switch self {
        case .unitedStates:
            return .requestPlain
   
        }
    }
    
    var headers: [String : String]? {
        switch self {
              default:
                  return [:]
              }
    }
 
    
    
}
