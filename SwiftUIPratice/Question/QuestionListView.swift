//
//  QuestionListView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 2023/10/16.
//

import SwiftUI
 
 

struct QuestionListView: View {
    var questions : [Question]
    var body: some View {
        NavigationSplitView{
            List(questions){ question in
//                question.destination
                
                NavigationLink(destination: QuestionDetail(question: question), label: {
                    Text("\(question.name)") })
            }
             
            } detail: {
                Text("select")
            }
 

    }
}
