//
//  RequestType.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import Foundation
import Alamofire

enum AlamofireMethod : String {
    case get = "GET"
}


enum RequestType {
    case requestPlain
}



protocol TargetType {
    var baseUrl : String {get}
    var path : String {get}
    var method : AlamofireMethod {get}
    var requestType : RequestType {get}
    var headers : [String:String]? {get}
  
}
