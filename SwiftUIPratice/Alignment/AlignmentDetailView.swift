//
//  AlignmentDetailView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/3/23.
//

import Foundation
import SwiftUI

struct AlignmentDetail01: View {
//    @ObservedObject var utilty = Utility()
//    @State private var numIndex : Int = 0
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
//                Spacer()
//                Text("\(numIndex)")
//                    .font(.largeTitle)
//                Spacer()
// 
//                
//                Button(action: {
//                   numIndex += 1
//                }, label: {Text("COUNT")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                })
//                    .background(.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .padding(5)
//                   
                   
            }.padding()
        }
    }
}


struct Alignment04: View {
    var body: some View {
        VStack(spacing: 50){

            VStack(){
                HStack(alignment: .oneThird){
                    Image("dog-01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                HStack(alignment: .oneThird) {
                    Image("dog-01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Image("dog-01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Image("dog-01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                
                HStack(alignment: .oneThird) {
                    Image("dog-01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Image("dog-01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Image("dog-01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
            }
            
            Spacer()
            
            HStack(spacing:50){
                Button("button"){}
                .buttonStyle(.bordered)
                .tint(.pink)
                Button("button"){}
                .buttonStyle(.bordered)
                .tint(.pink)
                Button("button"){}
                .buttonStyle(.bordered)
                .tint(.pink)
            }
        }.padding()

    }
}


struct Alignment05: View {
    var body: some View {
        VStack{
            Image(systemName: "square.and.arrow.up")
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
            HStack( ){
                Button("up"){}
                .buttonStyle(.bordered)
                .tint(.pink)
                Button("down"){}
                .buttonStyle(.bordered)
                .tint(.pink)
            }
            Image(systemName: "square.and.arrow.up")
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
                .rotationEffect(.degrees(180))
            
        }.padding()
    }
}


