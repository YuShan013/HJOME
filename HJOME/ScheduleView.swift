//
//  ScheduleView.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/19.
//

import SwiftUI

struct ScheduleView: View {
    @State var articles = [
        Article( image:"solorr", title: "畢羊縱走", author: "橘子", locationM:"南投縣", location: "仁愛鄉", actDate:"2021/07/10 -", time: "2021/07/13", numberOfPeople:"nam", numberOfPeople2: "", numerOfMessage: "2", numberOfHeart: "5", detailImage: "bi", detail:"畢祿山位於中央山脈的北二段，因中橫公路和820林道的開闢，而成為百岳中較易攀登的高山之一。山友多半由大禹嶺合歡山隧道西口的820林道進出，安排一日單攻、兩天一夜或畢羊縱走", qual: "1. 有3000公尺以上高山經驗 \n2. 四十分鐘內能跑完5公里", register:"cat", question:"Solor\n請問公糧要怎麼分配", level: 3, isHun: true)]
    var body: some View {
        NavigationView{
            List(articles){ article in
                ZStack {
                    ArticleRow(article: article)
                    
                    NavigationLink(destination: DetailView(article: article)){
                        EmptyView()
                    }.opacity(0)
                    
                    
                }
            }.navigationBarTitle("我的行程")
            
        }
        
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}

struct Sch: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var author: String
    var locationM: String
    var location: String
    var actDate: String
    var time: String
    var numberOfPeople: String
    var numberOfPeople2: String
    var numerOfMessage: String
    var numberOfHeart: String
    
    var detailImage: String
    var detail: String
    var qual: String
    var register: String
    var question: String
    var level: Int
    var isHun: Bool = false
    var isFavorite: Bool = false
    var suburb: Bool = false
}


struct SchRow: View {
    var article: Sch

    var body: some View {
        
    VStack(alignment: .leading) {
        HStack(alignment: .center){
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            Text((article.author).uppercased())
                .font(.system(size: 24, design: .rounded))
                .foregroundColor(Color("GrayDark"))
                    .padding(.bottom, 0)
            Spacer()
                
            if article.isFavorite {
                Image(systemName: "heart.fill")
                .foregroundColor(Color("RedL"))
                    .font(.system(size: 20, weight: .thin))
            }else{
                Image(systemName: "heart")
                    .foregroundColor(.secondary)
                    .font(.system(size: 20, weight: .thin))
            }
            }

           //
        Text(article.title)
            .font(.system(size: 26, design: .rounded))
            .foregroundColor(Color("GrayDark"))
                .fontWeight(.black)
                .lineLimit(2)
            .padding(.bottom, 5.0)
        
        HStack(alignment: .center){
            Image(systemName: "location.circle.fill")
                .foregroundColor(Color("GreenGrass"))
            VStack{
             Text(article.locationM)
                .font(.system(size: 18))
                .foregroundColor(Color("GrayDark"))
              Text(article.location)
                   .font(.system(size: 18))
                   .foregroundColor(Color("GrayDark"))
            }
                Spacer()
            Image(systemName: "clock.fill")
                .foregroundColor(Color("GreenGrass"))
            VStack(alignment: .leading){
             Text(article.actDate)
                .foregroundColor(Color("GrayDark"))
                .font(.system(size: 18))
             Text(article.time)
                .foregroundColor(Color("GrayDark"))
                .font(.system(size: 18))
            }
         }//HStack
        .padding(.all)
        .cornerRadius(3)
        .overlay(RoundedRectangle(cornerRadius: 3)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1))
        

        
        HStack(alignment: .center){
            Image(systemName: "person.fill")
                .foregroundColor(.secondary)
            Image(article.numberOfPeople)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .clipShape(Circle())
            Image(article.numberOfPeople2)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .clipShape(Circle())
            Spacer()
            Image(systemName: "message.fill")
                .foregroundColor(.secondary)
            Text(article.numerOfMessage)
            Image(systemName: "heart.fill")
                .foregroundColor(Color("RedL"))
            Text(article.numberOfHeart)
        }.padding(.vertical, 4.0)
    } // VStack
         
        .padding(.all)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
        )
    }
}

