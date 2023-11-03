//
//  CarDetailView.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/2/23.
//

import Foundation
import SwiftUI

struct CarList: View {
    
    @StateObject var carStore : CarStore = CarStore(cars: carData)
    @State private var stackPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stackPath){
            List{
                ForEach(0..<carStore.cars.count, id: \.self){i in
                    NavigationLink(value: i){
                        ListCell(car: carStore.cars[i])
                    }
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            
            
            
            .navigationDestination(for: Int.self){ i in
                CarDetail(selectedCar: carStore.cars[i])
            }
            .navigationDestination(for: String.self){ _ in
                AddNewCar(carStore: self.carStore, path: $stackPath)
            }
            .navigationTitle(Text("EV cars"))
            .toolbar{
                
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading){
                    NavigationLink(value: "Add car"){
                        Text("Add")
                    }
                }
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
                    EditButton()
                }
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet){
        carStore.cars.remove(atOffsets: offsets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int){
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
}

// 하위 뷰로 추출
struct ListCell: View {
    
    var car : Car
    
    var body: some View {
        HStack{
            Image(car.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 60)
            Text(car.name)
        }
         .toolbar(.hidden, for: .tabBar)
    }
}

//#Preview {
//    CarList()
//}
