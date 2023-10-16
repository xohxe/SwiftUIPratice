//
//  UIDetailView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 2023/10/16.
//

import SwiftUI

struct UIDetail01: View {
    
    var colors :[Color] = [.black,.red,.green]
    var colorname = ["Black","Red","Green"]
    
    @State private var colorIndex = 0
    @State private var rotation : Double = 0
    @State private var text : String = "Hello, world"
    
    var body: some View {
        VStack{
            Image("orange")
                .resizable()
                .frame(width: 100,height: 100)
                
            
            HStack(alignment: .center, spacing: 5){
                Button(action: {}, label: {Text("Home")})
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                Spacer()
                
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .rotationEffect(.degrees(rotation))
                    .animation(.easeOut(duration: 5), value: rotation)
                    .foregroundColor(colors[colorIndex])
                Spacer()
                
                Button(action: {}, label: {Text("Call")})
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.padding()
            
         
            
         
            
           // Slider(value: $rotation, in:0...360, step: 1.0)
            Spacer()
            HStack{
                
                TextField("Enter text here", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {}, label: {Text("Hello Button")})
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.padding()
            
           
//            Picker(selection: $colorIndex, label: Text("Color")){
//                ForEach(0 ..< colorname.count,id: \.self){
//                    Text(colorname[$0])
//                        .foregroundStyle(colors[$0])
//                }
//            }.pickerStyle(.wheel)
        }
    }
}



struct UIDetail02: View {
    @ObservedObject var utilty = Utility()
    @State private var numIndex : Int = 0
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Spacer()
                Text("\(numIndex)")
                    .font(.largeTitle)
                Spacer()
 
                
                Button(action: {
                   numIndex += 1
                }, label: {Text("COUNT")
                        .frame(maxWidth: .infinity)
                        .padding()
                })
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(5)
                   
                   
            }.padding()
        }
    }
}


struct UIDetail03: View {
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Button("1"){}
                    .frame(width: geometry.size.width)
                    .background(.blue)
                    .foregroundColor(.white)
                    .padding(5)
                   
                Spacer()
 
                 
                Button("2"){}
                    .frame(width: geometry.size.width, height: geometry.size.height / 4 * 3)
                    .background(.blue)
                    .foregroundColor(.white)
                    .padding(5)
                
                
                Spacer()
                
                Button("3"){}
                    .frame(width: geometry.size.width)
                    .background(.blue)
                    .foregroundColor(.white)
                    .padding(5)
                  
                
                   
            }
        }
    }
}




struct UIDetail04: View {
    
    var colors :[Color] = [.black,.red,.green]
    var colorname = ["Black","Red","Green"]
    
    @State private var colorIndex = 0
    @State private var rotation : Double = 0
    @State private var text : String = "Hello, world"
    
    var body: some View {
        VStack{
            Image("orange")
                .resizable()
                .frame(width: 100,height: 100)
                
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeOut(duration: 5), value: rotation)
                .foregroundColor(colors[colorIndex])
            Spacer()
             
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            Slider(value: $rotation, in:0...360, step: 1.0)
            Spacer()
             
           
            Picker(selection: $colorIndex, label: Text("Color")){
                ForEach(0 ..< colorname.count,id: \.self){
                    Text(colorname[$0])
                        .foregroundStyle(colors[$0])
                }
            }.pickerStyle(.wheel)
        }.padding()

    }
}
