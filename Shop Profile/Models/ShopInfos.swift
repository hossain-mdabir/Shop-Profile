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
    
}
