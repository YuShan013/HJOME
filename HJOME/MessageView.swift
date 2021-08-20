//
//  MessageView.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/19.
//

import SwiftUI

struct MessageView: View {
   
    var messages = [
        Message(image: "cat", name: "Nicole", talk: "請問還有名額嗎？", time: "10:55"),
        Message(image: "solar", name: "Solar", talk: "嗨你好", time: "09:15")]
    
    var body: some View {
        NavigationView{
            List(messages){ message in
                ZStack {
                    MessageList(message: message)
                    
                    NavigationLink(destination: TalkList(message: message)){
                        EmptyView()
                    }.opacity(0)
                }
            }.navigationBarTitle("我的訊息")
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}


struct Message: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var talk: String
    var time: String
}

struct MessageList: View {
    var message: Message
    
    var body: some View {
        HStack(alignment: .center){
            Image(message.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            Spacer()
                .frame(width: 20)
            VStack(alignment: .leading){
                Text(message.name)
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                Text(message.talk)
                    .foregroundColor(Color("GrayDark"))
            }
            Spacer()
            Text(message.time)
                .foregroundColor(Color("GrayDark"))
        }

        .padding(.all)
    }
}

struct TalkList: View {
    var message: Message
    
    var body: some View {
        VStack{
            Text(message.name)
                .font(.largeTitle)
                .fontWeight(.medium)
            Divider()
            
            HStack(alignment: .center){
                Image(message.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .padding(.leading, 7)
                Spacer()
                    .frame(width: 20)
                Text(message.talk)
                    .font(.headline)
                    .foregroundColor(Color("GrayDark"))
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(Color("GrayWhite"))        .cornerRadius(12)
                Spacer()
                Text(message.time)
                    .foregroundColor(Color("GrayDark"))
                    .padding(.trailing,8)
            }.padding()
            Spacer()
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}
