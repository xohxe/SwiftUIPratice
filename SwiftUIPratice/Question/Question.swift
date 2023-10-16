//
//  Question.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 2023/10/16.
//

import Foundation
import SwiftUI
import Combine
 
struct Question : Identifiable {
    
    @ObservedObject var utilty = Utility()
    
    var id = UUID()
    var name : String
    var description : String
    var unit : String
    var funcName : String
    var icon : String
}
 


extension Question{
    static var sampleData : [Question] {
        [
            Question(name: "몇시 몇분 몇초?", description: "초를 입력해주세요", unit: "초",
                     funcName: "secondToHour", icon: "clock"),
            Question(name: "급여계산기",description: "일한 시간을 입력해주세요", unit: "시간",
                     funcName: "calcPayment", icon: "wonsign")
 
        ]
    }
}
