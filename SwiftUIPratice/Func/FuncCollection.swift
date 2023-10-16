import Foundation
import SwiftUI


class Utility : ObservableObject {
    var input : String = ""
    
//    func secondToHour(_ second: Int) -> (h : Int, m : Int,s : Int) {
//        return (h: second / 3600 m: (second % 3600) / 60, s: (second % 3600) % 60 )
//    }
    public func getFunc(_ funcName : String) -> String{
        return funcName
    }
    
//    public func addCount( _ num: Int) -> Int{
//        num ++
//    }
}

class NumberOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let fillered = value.filter { $0.isNumber }
            if value != fillered {
                value = fillered
            }
        }
    }
}

func addCount( _ num: Int) -> Int{
   return num
}

func secondToHour(_ second: Int) -> (h : Int, m : Int,s : Int) {
    
    return (h: second / 3600, m: (second % 3600) / 60, s: (second % 3600) % 60 )
    
    
    
}

func calcPayment( _ time : Int) -> Int{
    if(time > 8){
        return time * 10000 + (time - 8) * 15000
    }else{
        return time * 10000
    }
}





//var payment : Int {
//    guard let a = Int(time) else{return 0}
//    if(a > 8){
//        return  a * 10000 + (a - 8) * 15000
//    }else{
//        return a * 10000
//    }
//}
//


//class ViewModel : ObservableObject{
//    @Published var result = 0
//    @Published var numberInput : String = ""
//
//    var number : Int{
//        Int(numberInput) ?? 0
//    }
//
//
//}


//func calcPayment( _ time: Int) -> Int{
//    // let time = input
//
//    if(time > 8){
//         return time * 10000 + (time - 8) * 15000
//     }else{
//         return time * 10000
//     }
// }


//
//struct SecondToHour: View {
//    @State private var time : String = ""
//    @State private var second : Int = 0
//
//    func secondToHour(_ second: Int) -> (h : Int, m : Int,s : Int) {
//        return (h: second / 3600, m: (second % 3600) / 60, s: (second % 3600) % 60 )
//    }
//
//    var timeInt : Int{
//        guard let a = Int(time) else{return 0}
//        return a
//    }
//
//
//    var body: some View {
//        ZStack{
//            VStack {
//                Text("급여계산기")
//                    .font(.system(size: 30, weight: .bold, design: .serif))
//                    .multilineTextAlignment(.leading)
//                TextField("초를 입력해주세요.", text: $time )
//                        .padding()
//                        .background(Color(uiColor: .secondarySystemBackground))
//                HStack{
//                    Image(systemName: "clock")
//                        .resizable()
//                        .frame(width:20,height:20)
//                        .aspectRatio(contentMode: .fit)
//
//                    Text("\(secondToHour(timeInt).h)시 \(secondToHour(timeInt).m)분 \(secondToHour(timeInt).s)초 ")
//                        .font(.system(size: 30, weight: .medium, design: .serif))
//                        .multilineTextAlignment(.leading)
//                }
//
//            }
//        }
//        .ignoresSafeArea()
//    }
//
//}
//extension Binding{
//
//}

//func calcPayment( _ time: Int) -> Int{
//    var time = input
//
//    if(time > 8){
//        return time * 10000 + (time - 8) * 15000
//    }else{
//        return time * 10000
//    }
//}


//func calcPayment() -> Int{
//
//
//    if(time > 8){
//        return time * 10000 + (time - 8) * 15000
//    }else{
//        return time * 10000
//    }
//}



//var timeInt : Int = 90
