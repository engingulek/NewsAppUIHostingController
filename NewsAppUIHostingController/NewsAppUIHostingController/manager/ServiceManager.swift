//
//  ServiceManager.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import Foundation
import Alamofire

protocol ServiceManagerProtocol {
    func fetch<M:Codable>(target:Network,completion:@escaping(Result<[M]?,Error>)->())
}

final class ServiceManager : ServiceManagerProtocol {
    func fetch<M:Codable>(target: Network, completion: @escaping (Result<[M]?, Error>) -> ())  {
        //MARK: - Requested method is received
            let method = Alamofire.HTTPMethod(rawValue: target.method.rawValue)
            let heasers = Alamofire.HTTPHeaders(target.headers ?? [:])
            //MARK:  - If selecet post Getting the parameter to be sent amd convert
            let parameters = buildParams(requestType: target.requestType)
        
        
        AF.request(target.baseUrl + target.path,method: method,
                   parameters: parameters.0,encoding: parameters.1,headers: heasers).response{  (response) in
            if let data = response.data {
                do{
                    let result = try JSONDecoder().decode(DataResult<M>.self, from: data)
                    completion(.success(result.articles!))
                }catch{
                    completion(.failure(error))
                }
            }
        }
    }
    
    private func buildParams(requestType: RequestType) -> ([String: Any], ParameterEncoding) {
           switch requestType {
           case .requestPlain:
               return ([:], URLEncoding.default)
         
           }
       }
   }
    
    
    



