//
//  Car.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 11/2/23.
//

import Foundation
import SwiftUI

 
struct Car: Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
    
}
