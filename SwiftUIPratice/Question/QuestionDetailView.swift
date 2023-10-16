import SwiftUI

struct QuestionDetail : View {
    @ObservedObject var utilty = Utility()
    
   var question : Question

     
    
    @State private var idx  = 0
    @State private var input : String = ""
    @State private var result : String = ""
    
    
     
    
    var body: some View {
        GeometryReader{ g in
            ScrollView{
                VStack{
                    VStack{
                        Text("\(question.name)").font(.system(size: 30, weight: .bold, design: .serif))
                            .multilineTextAlignment(.leading)
                        HStack{
                            TextField("\(question.description)", text: $input )
                                    .padding()
                        
                            Text("\(question.unit)").padding()
                             

                        }
                        //.background(Color(uiColor: .secondarySystemBackground))
                        
                       
                        Button(
                            action: {
                                buttonPressed("\(question.funcName)")
                            },
                            label: {
                                Text("변경")
                                    .frame(maxWidth: .infinity)
                            })
                            .buttonStyle(.bordered)
                            .tint(.blue)
                            .controlSize(.large)
                            .padding()
            
                        HStack{
                            Image(systemName: "\(question.icon)")
                                .resizable()
                                .frame(width:20,height:20)
                                .aspectRatio(contentMode: .fit)
                            Text(result)
                                .font(.system(size: 30, weight: .medium, design: .serif))
                                .multilineTextAlignment(.leading)
                        }
                    }
                    
                }
            }
        }
    }
    
    
    func buttonPressed(_ name: String) {
        if name == "secondToHour" {
            result =  "\(secondToHour(Int(input)!))"
        }else if name == "calcPayment" {
            result =  "\(calcPayment(Int(input)!))"
        }
        
    }
 
    
 
}
 

 



struct CalcView: View {
        @State private var input01 : String = ""
        @State private var input02 : String = ""
        @State private var result = 0
        
        var calcAdd : Int {
            guard let a = Int(input01), let b = Int(input02) else{ return 0 }
            return a + b
        }
        var calcSub : Int {
            guard let a = Int(input01), let b = Int(input02) else{ return 0 }
            return a - b
        }
        var calcMul : Int {
            guard let a = Int(input01), let b = Int(input02) else{ return 0 }
            return a * b
        }
        var calcDiv : Double {
            guard let a = Double(input01), let b = Double(input02) else{ return 0 }
            return a / b
        }
        
        var body: some View {
            VStack {
                
                HStack{
                    TextField("수1", text: $input01)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("수2", text: $input02)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding()
                
                
                Text("합: \(calcAdd)")
                Text("차: \(calcSub)")
                Text("곱: \(calcMul)")
                Text("나누기: \(calcDiv)")
                   
            }
        }
    
}
 

struct CalculatorView: View {
    @State private var input = "0"
    @State private var result = "0"
 
    var body: some View {
        VStack{
            
        }
    
    }
    
}
 

struct ResizeableTileView : View {
    var body: some View {
        Image("orange")
            .resizable()
            .frame(width: 50, height: 50)
    }
}
struct OrangeView: View {
        @State private var input01 : String = ""
        @State private var input02 : String = ""
        @State private var result = 0
        
    
        
        var orangeDiv : Int {
            guard let a = Int(input01), let b = Int(input02) else{ return 0 }
            return a / b
        }
        var remain : Int {
            guard let a = Int(input01), let b = Int(input02) else{ return 0 }
            return a % b
        }
        
        var body: some View {
            
            ZStack{
                
                VStack {
                    
                    
                    Text("귤을 나눠봅시다").font(.system(size: 32, weight: .medium, design: .serif))
                        .foregroundStyle(Color.yellow)
                    
                    
                    HStack{
                        
                        TextField("귤 개수", text: $input01)
                            .border(Color.yellow, width:2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("한 박스 당", text: $input02)
                            .border(Color.yellow, width:2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }
                    .padding()
                    
                    VStack{
                        HStack{
                            Image("box")
                                .resizable()
                                .frame(width:50,height:50)
                                .aspectRatio(contentMode: .fit)
                            Text("\(orangeDiv) Box 포장했어요.").font(.system(size: 20, weight: .medium, design: .serif))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                        }.padding()
                        
                        HStack {
                            Image("orange")
                                .resizable()
                                .frame(width:50,height:50)
                                .aspectRatio(contentMode: .fit)
                            Text("\(remain)개 남았어요.")
                                .font(.system(size: 20, weight: .medium, design: .serif))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                        }.padding()
                    }
                    .background(Color.white)
                    .border(Color.yellow,width: 2)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                    
                    
                }
            }
        }
    
}


struct Calc100View: View {
        @State private var input01 : String = ""
        @State private var result = 0
        
        var result03 : Int {
            guard let a = Int(input01)  else{ return 0 }
            return a / 100 * 100
        }
         
        
        var body: some View {
            VStack {
                VStack{
                    TextField("숫자 입력", text: $input01)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding()
                
                Text("백의 자리 버리는: \(result03)")
                
            }
        }
    
}

//    func btnPressed() {
//
//
//    }

struct Q05View: View {
        @State private var input : String = ""
        @State private var inputSwift : String = ""
    
        @State private var result = 0
       
        var result05: Int {
            guard let a = Int(input) else{ return 0 }
            return a + 1
        }
        
        var body: some View {
            ZStack{
                VStack {
                    
                    Text("Change to 1").font(.system(size: 32, weight: .medium, design: .serif))
                        .foregroundStyle(Color.blue)
                        
                    
                    HStack{
                        TextField("숫자 입력", text: $input)
                                .border(Color.yellow, width:2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                    }
                    .padding()
                    
                    VStack{
                        HStack{
                            Image(systemName: "cursorarrow.click.2")
                                .resizable()
                                .frame(width:20,height:20)
                                .aspectRatio(contentMode: .fit)
                            Text("\(result05)").font(.system(size: 20, weight: .medium, design: .serif))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                
                        }.padding()
                        
                         
                    }
                    .background(Color.white)
                    .border(Color.yellow,width: 2)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                    
                    //
                    Text("평균 점수구하기").font(.system(size: 32, weight: .medium, design: .serif))
                        .foregroundStyle(Color.blue)
                        
                    HStack{
                        TextField("숫자 입력", text: $inputSwift)
                                .border(Color.yellow, width:2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("숫자 입력", text: $inputSwift)
                                .border(Color.yellow, width:2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("숫자 입력", text: $inputSwift)
                                .border(Color.yellow, width:2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                    }.padding()
                    
                    VStack{
                        HStack{
                            
//                            Image("box")
//                                .resizable()
//                                .frame(width:50,height:50)
//                                .aspectRatio(contentMode: .fit)
                            Text("\(result05)").font(.system(size: 20, weight: .medium, design: .serif))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                
                        }.padding()
                        
                         
                    }
                    .background(Color.white)
                    .border(Color.yellow,width: 2)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                    
                }
                
                
            }
             
        }
    
}

struct PaymentCalcView: View {
    @State private var time : String = ""
    @State private var second : Int = 0

    func secondToHour(_ second: Int) -> (h : Int, m : Int,s : Int) {
        return (h: second / 3600, m: (second % 3600) / 60, s: (second % 3600) % 60 )
    }
    var payment : Int {
        guard let a = Int(time) else{return 0}
        if(a > 8){
            return  a * 10000 + (a - 8) * 15000
        }else{
            return a * 10000
        }
    }
   
    var body: some View {
        ZStack{
            VStack {
                TextField("근무시간을 입력해주세요.", text: $time )
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                
                HStack{
                    Text("급여")
                        .font(.system(size: 30, weight: .medium, design: .serif))
                        .multilineTextAlignment(.leading)
                    Image(systemName: "wonsign")
                        .resizable()
                        .frame(width:20,height:20)
                        .aspectRatio(contentMode: .fit)
                    Text("\(payment)")
                        .font(.system(size: 30, weight: .medium, design: .serif))
                        .multilineTextAlignment(.leading)
                }
                
            }
        }
    }
    
}

