//
//  MyPageView.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/18.
//

import SwiftUI

struct MyPageView: View {
    
    init(){
        UITableView.appearance().backgroundColor = .white
    }
    
    func configureBackground() {
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = UIColor(Color("GreenGrass"))
        UINavigationBar.appearance().standardAppearance = barAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
    }
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color("GreenGrass"))
                        .frame(width: 400, height: 260)
                    VStack{
                        
                        Image("koala")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                        
                        Text("Fox Wu")
                            .font(.system(size:32, weight:.black, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.vertical)
                        
                    }
                } //zstack
                
                List{
                    
                    NavigationLink(destination: MyDataView()){
                        Text("個人資料")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.vertical, 10)
                    }
                    
                    NavigationLink(destination: ScheduleView()){
                        Text("活動管理")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.vertical, 10)
                    }
                    
                    NavigationLink(destination: ScheduleView()){
                        Text("我的行程")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.vertical, 10)
                    }
                    
                    NavigationLink(destination: MyDataView()){
                        Text("登出帳號")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.vertical, 10)
                    }
                } //list
                .foregroundColor(Color("GreenGrass"))
                
                
            } //vstack
            .navigationBarTitle("", displayMode: .inline)
            .onAppear(perform: {
                configureBackground() 
            })
        } //navigatiogView
        
    }
}
struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
