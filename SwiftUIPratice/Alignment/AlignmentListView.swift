//
//  AlignmentListView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/3/23.
//
 
import SwiftUI
import UIKit
 
struct AlignmentListView: View {
 
    
    var alignments : [AlignmentItem]
//
//    @AppStorage("bgColor") var bgColorData : String = (UserDefaults.standard.string(forKey: "bgColor") ?? "0.98,0.9,0.2")
// 
//    var bgColor : Color {
//        Color(UIColor(
//            red: CGFloat((bgColorData.split(separator: ",").first.map { Double($0)! } ?? 0.98)),
//            green: CGFloat((bgColorData.split(separator: ",").dropFirst().first.map { Double($0)! } ?? 0.9)),
//            blue: CGFloat((bgColorData.split(separator: ",").dropFirst(2).first.map { Double($0)! } ?? 0.2)),
//            alpha: 1.0
//        ))
//    }

    
    init(alignments: [AlignmentItem]) {
        self.alignments = alignments
       // UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        NavigationStack{
            List(alignments){ el in
                NavigationLink(destination: el.destination, label: {
                    Text("\(el.name)") })
            }
            .listStyle(.plain) // 필수
       
            .background(Color.white)
       
     
            
        }
      
    }
}
 
