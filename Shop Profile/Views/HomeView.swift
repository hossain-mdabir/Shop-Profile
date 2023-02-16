//
//  HomeView.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var isConfirmed: Bool = true
    @State var isPartialDelivered: Bool = false
    @State var isDelivered: Bool = false
    
    @StateObject var fetchInfos = FetchInfos()
    
    @State var shop = ShopInfos()
    @State var orderInfos: [OrderInfos] = []
    
    @State var queryString: String = ""
    
    
        // MARK: - Customer Search
    var filterOrder: [OrderInfos] {
        if queryString.isEmpty {
            return fetchInfos.orderInfos
        } else {
//            return orderInfos.filter { ($0.paidAmount ?? 0).localizedCaseInsensitiveContains(queryString)
//                || ($0.dueAmount ?? 0).localizedCaseInsensitiveContains(queryString)
//                || ($0.advanceAmount ?? 0).localizedCaseInsensitiveContains(queryString)
//            }
            return fetchInfos.orderInfos.filter { ("\($0.totalValue ?? 0)").localizedCaseInsensitiveContains(queryString)
                || ("\($0.bookingID ?? 0)").localizedCaseInsensitiveContains(queryString)
            }
        }
    }
    
    var body: some View {
        ZStack {
            VStack {
                
                VStack {
                    
                    VStack(alignment: .center) {
                        
                        // // MARK: - Shop Information
                        Text(fetchInfos.shopInfos.shopName ?? "")
                            .padding(.top)
                            .font(.title2.weight(.semibold))
                            .foregroundColor(Color("Title"))
                        
                        Text("\(fetchInfos.shopInfos.thana ?? ""), \(fetchInfos.shopInfos.district ?? "")")
                            .font(.title3)
                            .foregroundColor(Color.gray)
                        
                        // // MARK: - Order status
                        HStack {
                            Button(action: {
                                isConfirmed = true
                                isPartialDelivered = false
                                isDelivered = false
                            }, label: {
                                Text("C-8")
                                    .font(.title3.bold())
                                    .foregroundColor(isConfirmed ? Color.white : Color.greenC)
                                    .frame(width: 80, height: 40, alignment: .center)
                                    .background(isConfirmed ? Color.greenC : Color.white)
                                    .cornerRadius(30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color.greenC, lineWidth: 1)
                                    )
                            })
                            
                            
                            Button(action: {
                                isConfirmed = false
                                isPartialDelivered = true
                                isDelivered = false
                            }, label: {
                                Text("CD-2")
                                    .font(.title3.bold())
                                    .foregroundColor(isPartialDelivered ? Color.black.opacity(0.6) : Color.yellow)
                                    .frame(width: 80, height: 40, alignment: .center)
                                    .background(isPartialDelivered ? Color.yellow : Color.white)
                                    .cornerRadius(30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(.yellow, lineWidth: 1)
                                    )
                            })
                            
                            
                            Button(action: {
                                isConfirmed = false
                                isPartialDelivered = false
                                isDelivered = true
                            }, label: {
                                Text("DL-4")
                                    .font(.title3.bold())
                                    .foregroundColor(isDelivered ? Color.white : Color.brown)
                                    .frame(width: 80, height: 40, alignment: .center)
                                    .background(isDelivered ? Color.brown : Color.white)
                                    .cornerRadius(30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(.brown, lineWidth: 1)
                                    )
                            })
                        }
                    }
                    
                    // MARK: - Search
                    Search(queryString: $queryString)
                        .padding(.bottom)
                    
                    // MARK: - Order data list
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 20) {
                            ForEach(0 ..< filterOrder.count, id: \.self) { shop in
                                
                                if isConfirmed && filterOrder[shop].statusID == 12 {
                                    
                                    OrderListView(fetchInfos: filterOrder[shop])
                                    
                                } else if isPartialDelivered && filterOrder[shop].statusID == 15 {
                                    
                                    OrderListView(fetchInfos: filterOrder[shop])
                                    
                                } else if isDelivered && filterOrder[shop].statusID == 9 {
                                    
                                    OrderListView(fetchInfos: filterOrder[shop])
                                    
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
        }
        .onAppear(perform: {
            
            let shopInfos = ShopInfos()
            fetchInfos.getShopInfos()
            fetchInfos.getOrderInfos()
            
            fetchInfos.orderInfos = orderInfos
            
        })
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



//extension String {
//    func dateFormatter(style: DateFormatter.Style) -> String? {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "m-dd-yy HH:MI:SS"
//        formatter.timeZone = .current
//        formatter.dateStyle = style
//        formatter.locale = Locale(identifier: "en_US_POSIX")
//        return formatter.string(from: Date())
//    }
//}


extension String {
    func roundTripDate(style: DateFormatter.Style) -> String? {
        //set things up
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = .current

        formatter.dateFormat = "yyyy-MM-dd" // this is the date format coming in
        //this guards against a String not being in the correct format
        guard let date = formatter.date(from: self) else {
            return nil
        }

        formatter.dateStyle = style // this is the date format going out
        return formatter.string(from: date)
    }
}
