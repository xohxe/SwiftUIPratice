//
//  SceneStorageView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 10/26/23.
//

import SwiftUI

struct SceneStorageView: View {
    
    //@State private var editorText:String=""
    @SceneStorage("mytext") var editorText:String = "Sample Text"
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    SceneStorageView()
}
