import SwiftUI
 
//extension UITabBarController{
//    
//    open override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        
//        tabBar.layer.masksToBounds = true
//        tabBar.layer.cornerRadius = 16
//        tabBar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
//        
//        if let shadowView = view.subviews.first(where: { $0.accessibilityIdentifier == "TabBarShadow" }){
//            shadowView.frame = tabBar.frame
//        }else{
//            let shadowView = UIView(frame: .zero)
//            shadowView.frame = tabBar.frame
//            shadowView.accessibilityIdentifier = "TabBarShadow"
//            shadowView.backgroundColor = UIColor.white
//            shadowView.layer.shadowColor = Color.black.cgColor
//            shadowView.layer.shadowOpacity = 0.1
//            shadowView.layer.shadowRadius = 3
//            
//            view.addSubview(shadowView)
//            view.bringSubviewToFront(tabBar)
//        }
//    }
//}

struct TabBarView:View {
    
    let colorData = UserDefaults.standard.string(forKey: "bgColor") ?? ""
    
 
    var bgColor : Color {
        Color(UIColor(
            red: CGFloat((colorData.split(separator: ",").first.map { Double($0)! } ?? 0.98)),
            green: CGFloat((colorData.split(separator: ",").dropFirst().first.map { Double($0)! } ?? 0.9)),
            blue: CGFloat((colorData.split(separator: ",").dropFirst(2).first.map { Double($0)! } ?? 0.2)),
            alpha: 1.0
        ))
    }
  
    
    
    var body: some View {
        NavigationView{
            TabView{
                
                NavigationView{
                    QuestionListView(questions: Question.sampleData, uis: UIItem.getUIItem(), alignments: AlignmentItem.getAlignmentItem(), bgColorData: colorData)
                }.tag(0)
                .tabItem {
                    Image(systemName: "q.square.fill")
                        .resizable()
                    Text("홈")
                }
     
                AppStorageView().tag(1)
                    .tabItem {
                        Image(systemName:"gear")
                            .resizable()
                        Text("설정")
                    }

            }
        }
    }
}
