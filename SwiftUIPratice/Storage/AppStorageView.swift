//
//  AppStorageView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 10/26/23.
//

import SwiftUI
import UIKit

struct AppStorageView: View {
 
    
    @AppStorage("bgColor") var bgColorData : String = (UserDefaults.standard.string(forKey: "bgColor") ?? "0.98,0.9,0.2")
   // "0.98,0.9,0.2"
    
    var bgColor : Color {
        Color(UIColor(
            red: CGFloat((bgColorData.split(separator: ",").first.map { Double($0)! } ?? 0.98)),
            green: CGFloat((bgColorData.split(separator: ",").dropFirst().first.map { Double($0)! } ?? 0.9)),
            blue: CGFloat((bgColorData.split(separator: ",").dropFirst(2).first.map { Double($0)! } ?? 0.2)),
            alpha: 1.0
        ))
    }
     
    
    var body: some View {
 
        
        VStack(alignment: .leading, spacing: 10){
            Text("Setting")
                .font(.title)
                .fontWeight(.bold)
            
            ColorPicker("UI예제 배경색 변경", selection: Binding(
                get: {self.bgColor},
                set: { newValue in
                    if let rgb = newValue.rgb{
                        bgColorData = "\(rgb.red),\(rgb.green),\(rgb.blue)"
                        UserDefaults.standard.set(bgColorData, forKey: "bgColor")
                    }
                })
                        
            )
            Spacer()
        }.padding(30)
        
    }
}

//#Preview {
//    AppStorageView()
//}

 
