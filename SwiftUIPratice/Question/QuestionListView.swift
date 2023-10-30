//
//  QuestionListView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 2023/10/16.
//

import SwiftUI
import UIKit

struct QuestionListView: View {
    var questions : [Question]
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
    init(questions: [Question], uis: [UIItem], bgColorData: String) {
        self.questions = questions
        self.uis = uis
        self.bgColorData = bgColorData
         
        UITableView.appearance().backgroundColor = .green
    }

    
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                
                List{
                    Section {
                        ForEach(questions) { question in
                            NavigationLink(destination: QuestionDetail(question: question), label: {Text(question.name)})
                        }
                    } header: {
                        Text("프로그램")
                    }
                    
                    Section{
                        ForEach(uis){ ui in
                            NavigationLink(destination: ui.destination, label: {
                                Text("\(ui.name)") })
                        }
                    } header: {
                        Text("UI 예제")
                    }
                    
                    
                
                }.listStyle(.insetGrouped)
                    .background(bgColor)
                    .scrollContentBackground(.hidden)
                    .navigationTitle("Home")
             //   Spacer()
            }
             
        }
        // .navigationBarTitleDisplayMode(.inline)
        
             
    }
}
