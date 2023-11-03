//
//  CarData.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/2/23.
//

import Foundation
import SwiftUI
import UIKit

//json은 assets에 안들어감.?

var carData :[Car] = loadJson("carData.json")

func loadJson<T: Decodable>(_ filename :String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            
    else{
        fatalError("\(filename) is not found")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Could not load \(filename) : \(error)")
    }
    
    do{
        return try JSONDecoder().decode(T.self, from: data)
    }catch{
        fatalError("Unable to parse \(filename) : \(error)")
    }
}

