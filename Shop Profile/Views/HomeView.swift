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
    
    
    
    
    @State var queryString: String = ""
    
    var body: some View {
        VStack {
            
            VStack {
                
                VStack(alignment: .center) {
                    Text("Vai Vai")
                        .padding()
                        .font(.title.weight(.semibold))
                        .foregroundColor(Color.blue)
                    
                    Text("Vai Vai")
                        .font(.title2.weight(.semibold))
                        .foregroundColor(Color.gray)
                    
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
                                //                            .padding(.horizontal)
                                //                            .padding(.vertical, 10)
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
                                .foregroundColor(isPartialDelivered ? Color.black : Color.yellow)
                                .frame(width: 80, height: 40, alignment: .center)
                                //                            .padding(.horizontal)
                                //                            .padding(.vertical, 10)
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
//                            .padding(.horizontal)
//                            .padding(.vertical, 10)
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
                
                
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 20) {
                        ForEach(0 ..< 5) { _ in
                            
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Text("Order ID # \(6789)")
                                    
                                    Spacer()
                                    
                                    Text("৳\(6789)")
                                }
                                .font(.title3.weight(.semibold))
                                
                                HStack {
                                    Text("March 12, 2022 4:00 pm")
                                    
                                    Spacer()
                                    
                                    Text("Total Item: 250")
                                }
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                                
                                
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
                            .padding(10)
                            .background(Color.greenC.opacity(0.05))
//                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.greenC.opacity(0.5), lineWidth: 1)
                            )
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("Plain Notes")
        .navigationBarTitleDisplayMode(.automatic)
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
