//
//  FetchInfos.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import Foundation
import Alamofire



class FetchInfos: ObservableObject {
    
    @Published var shopInfos = ShopInfos()
    @Published var orderInfos: [OrderInfos] = []
    
    
    func getShopInfos() {
        
        var shopInfo = ShopInfosPost()
        
        shopInfo.UserID = 120
        shopInfo.CompanyID = 29
        shopInfo.ShopFK = 8
        
        
        let encoder = JSONEncoder()
        let jsonData = try! encoder.encode(shopInfo)
        
        let url = "\(Api().domain)Api/App/Shop"
        
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData
        
        
        AF.request(request).responseData { response in
            print ("Shop Data1: \(response.debugDescription)")
            switch response.result {
            case .success(let value):
                
                do {
                    let response = try JSONDecoder().decode(ShopInfos.self, from: value)
                    
                    self.shopInfos = response
                    
                    print("Shop response \(response)")
                } catch {
                    print("Shop ERROR: \(error)")
                }
                
                print ("Shop : DEBUG DATA :: \(value.debugDescription)")
                
                print ("Shop : \(response)")
                
            case .failure(let error):
                
                print("Print Shop: \(error)")
            }
        }
    }
    
    // MARK: - Order infos network call
    func getOrderInfos() {
        
        var shopInfo = ShopInfosPost()
        
        shopInfo.UserID = 120
        shopInfo.CompanyID = 29
        shopInfo.ShopFK = 8
        shopInfo.StatusID = 0
        
        
        let encoder = JSONEncoder()
        let jsonData = try! encoder.encode(shopInfo)
        
        let url = "\(Api().domain)Api/App/Orders"
        
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData
        
        // Remove previous loaded data while loading again
        self.orderInfos.removeAll()
        
        
        AF.request(request).responseData { response in
            print ("Order Data1: \(response.debugDescription)")
            switch response.result {
            case .success(let value):
                
                do {
                    let response = try JSONDecoder().decode([OrderInfos].self, from: value)
                    
                    let list = response
                    for li in list ?? [] {
                        self.updateItems(li)
                        print("Order : DEBUG DATA \(li.totalValue)")
                    }
                    
//                    for res in response {
//                        self.orderInfos.append(res)
//                    }
                    
                    print("Order response \(response)")
                } catch {
                    print("Order ERROR: \(error)")
                }
                
                print ("Order : DEBUG DATA :: \(value.debugDescription)")
                
                print ("Order : \(response)")
                
            case .failure(let error):
                
                print("Print Order: \(error)")
            }
        }
    }
    
    
    func updateItems(_ str: OrderInfos) {
        DispatchQueue.main.async {
            self.orderInfos.append(str)
        }
    }
    
}
