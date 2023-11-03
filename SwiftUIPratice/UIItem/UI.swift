//
//  UI.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 2023/10/16.
//

import Foundation
import SwiftUI
import Combine
 
struct UIItem : Identifiable {
    //  @ObservedObject var utilty = Utility()
    var id : Int
    var name : String
    var destination : AnyView
 
}
 
extension UIItem{
  
    init<TheView : View>(id:Int,name:String, destination: TheView ) {
        self.id = id
        self.name = name
        self.destination = AnyView(destination)
    }
  
}

extension UIItem{
    static func getUIItem() -> [UIItem] {
        return [
            UIItem(id:1, name: "예제01", destination: UIDetail01()),
            UIItem(id:2, name: "예제02", destination: UIDetail02()),
            UIItem(id:3, name: "예제03", destination: UIDetail03()),
            UIItem(id:4, name: "예제04", destination: UIDetail04()),
//            UIItem(id:5, name: "정렬 예제04", destination: Alignment04()),
//            UIItem(id:6, name: "정렬 예제05", destination: Alignment05()),
            UIItem(id:7, name: "Chapter 31", destination: CarList())
            
        ]
    }
}
