//
//  ContentView.swift
//  InspiringWomenApp
//
//  Created by khoirunnisa' rizky noor fatimah on 09/09/21.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView{
            InspiringWomenView(inspiringWomen: InspiringWomenData.data)
                .tabItem {
                    Label("All List", systemImage: "list.dash")
                }
            FavouriteProfileView()
                .tabItem {
                    Label("My Favourites", systemImage: "star.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
