//
//  InspiringWomenView.swift
//  InspiringWomenApp
//
//  Created by khoirunnisa' rizky noor fatimah on 27/09/21.
//

import SwiftUI

struct InspiringWomenView: View {
    let inspiringWomen: [InspiringWomenData]
    
    init(inspiringWomen: [InspiringWomenData]) {
        self.inspiringWomen = inspiringWomen
    }
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(inspiringWomen, id: \.imageName) { data in
                    WomenCardView(profilData: data)
                        .listRowInsets(EdgeInsets())
                }
            }
            .listRowBackground(Color.clear)
            .onAppear {
                UITableView.appearance().separatorStyle = .none
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
            .navigationTitle("Inspiring Women")
        }
        
    }
}

struct InspiringWomenView_Previews: PreviewProvider {
    static var previews: some View {
        InspiringWomenView(inspiringWomen: InspiringWomenData.data)
    }
}
