//
//  OrderInfos.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import Foundation


struct OrderInfos: Codable {
    let bookingID: Int?
    let voucherID: Int?
    let userID: Int?
    let compnayID: Int?
    let shopFK: Int?
    let rOuteFK: Int?
    let typeID: Int?
    let clientID: Int?
    let totalItem: Int?
    let statusID: Int?
    let shopName: String?
    let address: String?
    let remarks: String?
    let code: String?
    let totalValue: Int?
    let paidAmount: Int?
    let dueAmount: Int?
    let totalDiscount: Int?
    let cd: Int?
    let deliveryDate: String?
    let products: String?
}
