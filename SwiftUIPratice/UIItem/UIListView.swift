//
//  UIListView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 2023/10/16.
//

import SwiftUI
import UIKit
 
struct UIListView: View {
 
    
    var uis : [UIItem]
    
    @AppStorage("bgColor") var bgColorData : String = (UserDefaults.standard.string(forKey: "bgColor") ?? "0.98,0.9,0.2")
 
    var bgColor : Color {
        Color(UIColor(
            red: CGFloat((bgColorData.split(separator: ",").first.map { Double($0)! } ?? 0.98)),
            green: CGFloat((bgColorData.split(separator: ",").dropFirst().first.map { Double($0)! } ?? 0.9)),
            blue: CGFloat((bgColorData.split(separator: ",").dropFirst(2).first.map { Double($0)! } ?? 0.2)),
            alpha: 1.0
        ))
    }

    
    init(uis: [UIItem]) {
        self.uis = uis 
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        ZStack{
    
            List(uis){ ui in
                NavigationLink(destination: ui.destination, label: {
                    Text("\(ui.name)") })
                //.colorMultiply(Color.white)
                .listRowBackground(bgColor)
//                .listRowBackground(Color.white)
//                .background(Color.white)
            }
            .listStyle(.plain) // 필수
           // .scrollContentBackground(Color.red)
           // .colorMultiply(bgColor)
            .background(Color.white)
          // Spacer()
          //  Color.red
     
            
        }
      
    }
}
 
