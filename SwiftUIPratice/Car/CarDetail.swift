//
//  CarDetail.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/2/23.
//

import Foundation
import SwiftUI

// 상세 뷰 설계
struct CarDetail:View {
    let selectedCar : Car
    
    var body: some View {
        Form{
            Section {
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text(selectedCar.name)
                    .font(.headline)
                Text(selectedCar.description)
                    .font(.body)
                HStack{
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ? "checkmark.circle":"xmark.circle")
                    
                        
                }
            }header:{
                Text("Car Detail")
           }
        }
    }
}

 

#Preview {
    CarDetail(selectedCar: carData[0])
}
