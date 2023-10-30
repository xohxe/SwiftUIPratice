//
//  ExtensionCollection.swift
//  SwiftUIPratice
//
//  Created by 김소혜 on 10/26/23.
//

import Foundation
import UIKit
import SwiftUI


extension Color {
    var rgb : (red : Double, green : Double, blue : Double)? {
        guard let components = cgColor?.components, components.count >= 3 else{
            return nil
        }
        return (Double(components[0]), Double(components[1]), Double(components[2]))
    }
}
//
//extension UINavigationController {
//    override open func viewDidLoad() {
//        super.viewDidLoad()
//
//    let standard = UINavigationBarAppearance()
//    standard.backgroundColor = .red //When you scroll or you have title (small one)
//
//    let compact = UINavigationBarAppearance()
//    compact.backgroundColor = .green //compact-height
//
//    let scrollEdge = UINavigationBarAppearance()
//    scrollEdge.backgroundColor = .blue //When you have large title
//
//    navigationBar.standardAppearance = standard
//    navigationBar.compactAppearance = compact
//    navigationBar.scrollEdgeAppearance = scrollEdge
// }
//}
// 
//extension UITableViewController{
//    navigationSplitView.view.backgroundColor = UIColor.blue
//}

