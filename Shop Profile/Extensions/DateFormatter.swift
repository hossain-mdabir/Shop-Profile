//
//  DateFormatter.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 17/2/23.
//

import Foundation

import SwiftUI

//extension View {
//    
//    func dateFormatter(dateStr: String) -> String {
//        if !dateStr.isEmpty {
//            let dateFormatter = DateFormatter()
//            dateFormatter.calendar = Calendar(identifier: .gregorian)
//            dateFormatter.dateFormat = "yyyy-MM-ddHH:mm:ss.S"
//            let newDate = dateFormatter.date(from: dateStr)
//            dateFormatter.setLocalizedDateFormatFromTemplate("d MMM yy")
//            return dateFormatter.string(from: newDate!)
//        } else {
//            return ""
//        }
//    }
//}
//
//extension Date {
//   func getFormattedDate(format: String) -> String {
//        let dateformat = DateFormatter()
//        dateformat.dateFormat = format
//        return dateformat.string(from: self)
//    }
//}
//
//extension Date {
//    func convertDateFormat(inputDate: String) -> String {
//
//         let olDateFormatter = DateFormatter()
//         olDateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
//
//         let oldDate = olDateFormatter.date(from: inputDate)
//
//         let convertDateFormatter = DateFormatter()
//         convertDateFormatter.dateFormat = "MMM dd yyyy h:mm a"
//
//         return convertDateFormatter.string(from: oldDate!)
//    }
//}


extension View {
    
    func formattedDate(dateStr: String) -> String {
        if !dateStr.isEmpty {
            let dateFormatter = DateFormatter()
            
            dateFormatter.calendar = Calendar(identifier: .gregorian)
            dateFormatter.dateFormat = "MMM d, yyyy"  // yyyy-MM-dd 'T'HH: mm:ssZ
            let newDate = dateFormatter.date(from: dateStr) ?? Date()
            dateFormatter.setLocalizedDateFormatFromTemplate("yyyy-MM-dd 'T'HH: mm:ssZ")
            return dateFormatter.string(from: newDate)
        } else {
            return ""
        }
    }
}
