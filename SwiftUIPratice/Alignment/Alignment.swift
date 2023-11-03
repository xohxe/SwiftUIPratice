//
//  Alignment.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/3/23.
//

import Foundation
import SwiftUI
import Combine
 
struct AlignmentItem : Identifiable {
 
    var id : Int
    var name : String
    var destination : AnyView
 
}
 
extension AlignmentItem{
  
    init<TheView : View>(id:Int,name:String, destination: TheView ) {
        self.id = id
        self.name = name
        self.destination = AnyView(destination)
    }
  
}

extension AlignmentItem{
    static func getAlignmentItem() -> [AlignmentItem] {
        return [ 
            AlignmentItem(id:2, name: "예제04", destination: Alignment04()),
            AlignmentItem(id:3, name: "예제05", destination: Alignment05()),
            
        ]
    }
}
