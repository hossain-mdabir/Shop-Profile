//
//  OrderInfos.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import Foundation


//struct OrderInfos: Codable {
//    var bookingID: Int?
//    var voucherID: Int?
//    var userID: Int?
//    var compnayID: Int?
//    var shopFK: Int?
//    var rOuteFK: Int?
//    var typeID: Int?
//    var clientID: Int?
//    var totalItem: Int?
//    var statusID: Int?
////    let shopName: NSNull?
////    let address: String?
////    let remarks: String?
//    var code: String?
//    var totalValue: Int?
//    var paidAmount: Int?
//    var dueAmount: Int?
//    var totalDiscount: Int?
//    var advanceAmount: Int?
//    var cd: String?
//    var deliveryDate: String?
////    let products: String?
//}


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
