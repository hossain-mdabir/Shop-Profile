//
//  OrderListView.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 16/2/23.
//

import SwiftUI

struct OrderListView: View {
    
    var fetchInfos = OrderInfos()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Order ID # \(fetchInfos.bookingID ?? 0)")
                
                Spacer()
                
                Text("৳\(fetchInfos.totalValue ?? 0)")
            }
            .font(.title3.weight(.semibold))
            
            HStack {
                                
                let datest = print("dddddddd \(fetchInfos.cd ?? "")")
//                Text("\((fetchInfos.cd ?? "").roundTripDate(style: .full) ?? "")")
//                Text(formattedDate(dateStr: fetchInfos.cd ?? ""))
                Text(fetchInfos.cd ?? "")
                
                Spacer()
                
                Text("Total Item: \(fetchInfos.totalItem ?? 0)")
            }
            .font(.system(size: 14))
            
            if fetchInfos.statusID == 15 || fetchInfos.statusID == 9 {
                Button(action: {
                    
                }, label: {
                    HStack {
                        Text("Inventory History")
                        Image(systemName: "chevron.right")
                            .font(.system(size: 10, weight: .bold))
                    }
                    .fontWeight(.semibold)
                    .padding(8)
                    .foregroundColor(Color.white)
                    .background(Color.greenC)
                    .cornerRadius(5)
                })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 5)
            }
        }
        .padding(10)
        .foregroundColor(Color.black.opacity(0.6))
        .background(Color.greenC.opacity(0.05))
            //                            .cornerRadius(5)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.greenC.opacity(0.5), lineWidth: 1)
        )
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
