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
    var alignments : [AlignmentItem]
    
    @State private var searchText = ""
    
    @AppStorage("bgColor") var bgColorData : String = (UserDefaults.standard.string(forKey: "bgColor") ?? "0.98,0.9,0.2")
 
    var bgColor : Color {
        Color(UIColor(
            red: CGFloat((bgColorData.split(separator: ",").first.map { Double($0)! } ?? 0.98)),
            green: CGFloat((bgColorData.split(separator: ",").dropFirst().first.map { Double($0)! } ?? 0.9)),
            blue: CGFloat((bgColorData.split(separator: ",").dropFirst(2).first.map { Double($0)! } ?? 0.2)),
            alpha: 1.0
        ))
    }
    init(questions: [Question], uis: [UIItem],alignments:[AlignmentItem], bgColorData: String) {
        self.questions = questions
        self.uis = uis
        self.bgColorData = bgColorData
        self.alignments = alignments
         
        UITableView.appearance().backgroundColor = .green
    }

    
    
    var body: some View {
            ZStack{
                NavigationView{
                    
               
                    
        
                List{
               
                    Section {
                        ForEach(questions) { question in
                            NavigationLink(destination: QuestionDetail(question: question), label: {Text(question.name)})
                        }
                    } header: {
                        Text("프로그램")
                    }
                    
                    Section{
                        ForEach(uis){ el in
                            NavigationLink(destination: el.destination, label: {
                                Text("\(el.name)") })
                        }
                    } header: {
                        Text("UI 예제")
                    }
                    
                    Section{
                        ForEach(alignments){ el in
                            NavigationLink(destination: el.destination, label: {
                                Text("\(el.name)") })
                        }
                    } header:{
                        Text("Alignment 예제")
                    }
                
                }.listStyle(GroupedListStyle())
                    .background(bgColor)
                    .scrollContentBackground(.hidden)
                    .navigationTitle("Home")
                    .navigationBarItems(trailing: Button(action: {
                        
                    }){
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                            .foregroundColor(.black)
                            
                    })
                    
            }
        }.edgesIgnoringSafeArea(.all)
        
        
             
    }
}
