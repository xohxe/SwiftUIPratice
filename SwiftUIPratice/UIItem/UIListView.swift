//
//  UIListView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 2023/10/16.
//

import SwiftUI
 
 
struct UIListView: View {
    var uis : [UIItem]
    
    var body: some View {
        NavigationSplitView{
            List(uis){ ui in
        
                NavigationLink(destination: ui.destination, label: {
                    Text("\(ui.name)") })
            }
             
            } detail: {
                Text("select")
            }
 

    }
}
