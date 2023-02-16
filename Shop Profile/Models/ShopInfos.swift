//
//  ShopInfos.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import Foundation


struct ShopInfos: Codable {
    var shopID: Int? = nil
    var statusID: Int? = nil
    var districtID: Int? = nil
    var thanaID: Int? = nil
    var orderID: Int? = nil
    var latitude: Double? = nil
    var longitude: Double? = nil
    var shopName: String? = nil
    var address: String? = nil
    var district: String? = nil
    var thana: String? = nil
    var code: Int? = nil
    var date: String? = nil
    var confirm: Int? = nil
    var partialDelivered: Int? = nil
    var delivered: Int? = nil
    var phoneNumber: String? = nil
    
//    init(shopID: Int?, statusID: Int?, districtID: Int?, thanaID: Int?, orderID: Int?, latitude: Double?, longitude: Double?, shopName: String?, address: String?, district: String?, thana: String?, code: Int?, date: String?, confirm: Int?, partialDelivered: Int?, delivered: Int?, phoneNumber: String?) {
//        
//        self.shopID = shopID
//        self.statusID = statusID
//        self.districtID = districtID
//        self.thanaID = thanaID
//        self.orderID = orderID
//        self.latitude = latitude
//        self.longitude = longitude
//        self.shopName = shopName
//        self.address = address
//        self.district = district
//        self.thana = thana
//        self.code = code
//        self.date = date
//        self.confirm = confirm
//        self.partialDelivered = partialDelivered
//        self.delivered = delivered
//        self.phoneNumber = phoneNumber
//    }
}
