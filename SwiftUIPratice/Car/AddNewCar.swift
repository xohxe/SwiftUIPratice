//
//  AddNewCar.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/2/23.
//

import Foundation
import SwiftUI

struct AddNewCar:View {
    
    @StateObject var carStore : CarStore
    @Binding var path: NavigationPath
    @State private var isHybrid = false
    @State private var name : String = ""
    @State private var description : String = ""
    
    var body: some View {
        Form{
            
            Section(header: Text("Car Details")){
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                DataInput(title: "Model", useInput: $name)
                DataInput(title: "Description", useInput: $description)
                
                Toggle(isOn: $isHybrid){
                    Text("Hybrid").font(.headline)
                }.padding()
                
            }
            Button(action: addNewCar){
                Text("Add Car")
            }
           
        }
    }
    func addNewCar(){
        // 프로젝트 간략화를 위해 사진 라이브러리에서 사진을 가져오지 않고 기존 이미지 재사용
        let newCar = Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_3")
        carStore.cars.append(newCar)
        path.removeLast()
    }
    
}
struct DataInput:View {
    
    var title : String
    @Binding var useInput :String
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading){
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $useInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}


//
//#Preview {
//    AddNewCar(carStore: CarStore(cars:carData))
//}
