//
//  ShopInfos.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import Foundation


struct ShopInfos: Codable {
    let shopID: Int?
    let statusID: Int?
    let districtID: Int?
    let thanaID: Int?
    let orderID: Int?
    let latitude: Double?
    let longitude: Double?
    let shopName: String?
    let address: String?
    let district: String?
    let thana: String?
    let code: Int?
    let date: String?
    let confirm: Int?
    let partialDelivered: Int?
    let delivered: Int?
    let phoneNumber: String?
}


