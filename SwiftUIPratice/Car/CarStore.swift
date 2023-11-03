//
//  CarStore.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/2/23.
//

import Foundation
import SwiftUI
import Combine

class CarStore : ObservableObject{
    @Published var cars : [Car]
    
    init(cars:[Car] = []){
        self.cars = cars
    }
}
