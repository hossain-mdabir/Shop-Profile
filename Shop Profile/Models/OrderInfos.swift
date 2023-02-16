//
//  OrderInfos.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import Foundation


struct OrderInfos: Codable {
    var bookingID, voucherID, userID, compnayID: Int?
    var shopFK, rOuteFK, typeID, clientID: Int?
    var totalItem, statusID: Int?
//    var shopName, address, remarks: NSNull?
    var code: String?
    var totalValue, paidAmount, dueAmount, totalDiscount: Int?
    var advanceAmount: Int?
    var cd: String?
    var deliveryDate: String?
//    let products?
    var isEligibleForAdvancePayment: Bool?
}
