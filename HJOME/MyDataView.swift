//
//  MyDataView.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/19.
//

import SwiftUI

struct MyDataView: View {
    
    @Environment(\.presentationMode) var persentationMode
        
    func configureBackground() {
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = UIColor(Color("GreenGrass"))
        UINavigationBar.appearance().standardAppearance = barAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
    }
    
    var body: some View {
        VStack{
            ZStack{
                Color(("GreenGrass"))
                Rectangle()
                    .fill(Color("GreenGrass"))
                    .frame(width: 400, height: 250)
                VStack{
                    HStack{
                        Spacer()
                        Button(action: {
                            self.persentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.down.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }.padding(.trailing)
                    }
                    Spacer()
                        .frame(height: 50)
                    Image("koala")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    Text("Fox Wu")
                        .font(.system(size:32, weight:.black, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.bottom)
                Spacer()
                    .frame(height: 30)
                    
                    MyDataRow(title: "基本\n資料", detail: "Age：32\nGender： 男")
                    MyDataRow(title: "登山\n經驗", detail: "雪山主東、武陵四秀、北大武、玉山主北")
                    MyDataRow(title: "身體\n狀況", detail: "輕微高山症，吃丹木斯即可緩解")
                    MyDataRow(title: "擁有\n裝備", detail: "頭燈、睡袋、雙人帳篷、顱頭、高山瓦斯")
                }
            } //zstack
            .edgesIgnoringSafeArea(.all)
        }//vstack
    }
}

struct MyDataView_Previews: PreviewProvider {
    static var previews: some View {
        MyDataView()
    }
}


struct MyDataRow: View {
    var title: String
    var detail: String
    var body: some View {
      
        HStack{
            Text(title)
                .font((.system(size: 24, weight: .black)))
                .foregroundColor(Color("GreenGrass"))
                .padding(.leading)
            
            Spacer()
                .frame(width: 40)
            
            Text(detail)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .lineSpacing(6)
                .font((.system(size: 20)))
                .foregroundColor(Color("GrayLight"))
                .padding(.trailing)
            Spacer()
            
        }
        .padding(.all)
        .background(Color.white)        .cornerRadius(8)
        .padding(.horizontal, 24)
        .padding(.vertical, 6)
    }
}


