//
//  Search.swift
//  THP Online
//
//  Created by AM1 on 3/10/22.
//

import SwiftUI

struct Search: View {
    @Binding var queryString: String
    @State private var isEditing = false
    var body: some View {
        HStack {
            TextField("Search Something", text: $queryString)
                .padding(10)
                .padding(.horizontal, 30)
                .background(Color(.systemGray6))
                .foregroundColor(Color.black)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(. gray)
                            .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                            .padding(.leading, 10)
                        
                        
                        if !queryString.isEmpty { // OR // isEditing
                            Button(action: {
                                self.queryString = ""
                            }, label: {
                                Image(systemName: "xmark")
                                    .bold()
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 10)
                            })
                        }
                    })
        }
    }
}

//struct Search_Previews: PreviewProvider {
//    static var previews: some View {
//        Search(queryString: $queryString)
//    }
//}
