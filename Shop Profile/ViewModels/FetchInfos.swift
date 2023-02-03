//
//  FetchInfos.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import Foundation
import Alamofire


class FetchInfos: Identifiable {
    
    @Published var shopInfos = ShopInfos()
    
//    func getShopInfos() {
        func getShopInfos(completionHandler: @escaping ((ShopInfos?, Error?)->Void)) {
            
            print("calling from otp network call")
            
            var shopInfo = ShopInfosPost()
            
            shopInfo.UserID = 120
            shopInfo.CompanyID = 29
            shopInfo.ShopFK = 8
            
            let encoder = JSONEncoder()
            let jsonData = try! encoder.encode(shopInfo)
            
            let url = "http://test.bdbizhub.com/Api/App/Shop"
            
            var request = URLRequest(url: URL(string: url)!)
            
            request.httpMethod = HTTPMethod.post.rawValue
            request.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
            request.httpBody = jsonData
            
            
            AF.request(request).responseData { response in
                
                print(request.debugDescription)
                print(response.debugDescription)
                var statusCode = response.response?.statusCode
                
                
                print("HTTP status code : \(statusCode)")
                switch response.result {
                case .success(let value):
                    
                    let swiftyJson = ""
                    let response = try? JSONDecoder().decode(ShopInfos.self, from: value)
                    
                    print ("Welcome to Shop response\(response)")
                    
                    
                    shopInfos = response
                    
                    completionHandler(response, nil)
                    
                case .failure(let error):
                    print("Print shopRes\(error)")
                    
                    completionHandler(nil, error)
                }
            }
        }
//    }
    
    
    func getOrderInfos() {
        
    }
    
}
