import SwiftUI
 
extension UITabBarController{
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        tabBar.layer.masksToBounds = true
        tabBar.layer.cornerRadius = 16
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        
        if let shadowView = view.subviews.first(where: { $0.accessibilityIdentifier == "TabBarShadow" }){
            shadowView.frame = tabBar.frame
        }else{
            let shadowView = UIView(frame: .zero)
            shadowView.frame = tabBar.frame
            shadowView.accessibilityIdentifier = "TabBarShadow"
            shadowView.backgroundColor = UIColor.white
            shadowView.layer.shadowColor = Color.black.cgColor
            shadowView.layer.shadowOpacity = 0.1
            shadowView.layer.shadowRadius = 3
            
            view.addSubview(shadowView)
            view.bringSubviewToFront(tabBar)
        }
    }
}

struct TabBarView:View {
    var body: some View {
        TabView{
            NavigationView{
                QuestionListView(questions: Question.sampleData)
            }.tag(0)
            .tabItem {
                Image(systemName: "q.square.fill")
                    .resizable()
                Text("문제")
            }
            
            NavigationView{
                UIListView(uis: UIItem.getUIItem())
                 
            }.tag(1)
            .tabItem {
                Image(systemName:"rainbow")
                    .resizable()
                Text("UI예제")
            }
            
                        
                        

        }
    }
}
