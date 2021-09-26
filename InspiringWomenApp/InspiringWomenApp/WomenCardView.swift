//
//  WomenCardView.swift
//  InspiringWomenApp
//
//  Created by khoirunnisa' rizky noor fatimah on 26/09/21.
//

import SwiftUI

struct WomenCardView: View {
    
    var profilData: InspiringWomenData
    
    var body: some View {
        HStack(){
            
            Image(profilData.imageName)
                .resizable()
                .frame(width: 135, height: 150)
                .aspectRatio(contentMode: .fit)
            
                
            VStack(alignment: .leading){
                Text(profilData.profileName)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(profilData.shortDescription)
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
        }
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding()
        
        
    }
}

struct WomenCardView_Previews: PreviewProvider {
    static var testData = InspiringWomenData.data[0]
    static var previews: some View {
        WomenCardView(profilData: testData)
    }
}
