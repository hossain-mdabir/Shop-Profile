//
//  ContentView.swift
//  Shop Profile
//
//  Created by Md Abir Hossain on 3/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HomeView()
        }
        .navigationTitle("Plain Notes")
        .navigationBarTitleDisplayMode(.automatic)
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



