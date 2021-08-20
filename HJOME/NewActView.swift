//
//  NewActView.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/7.
//

import SwiftUI

struct NewActView: View {
    
    @State private var text = ""
    @State private var textInFeild = ""
    @State private var description = ""
    @State private var numberOfPeople = 2
    @State private var date = Date()
    
    @State var checked = false
    @State private var showAlert = false
    
    @Environment(\.presentationMode) var presenationMode
    
    var body: some View {
        ScrollView{
            Text("建立活動")
                .font(.system(size: 28))
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .padding([.top, .bottom], 15.0)
           
            VStack(alignment: .leading) {
            
        Group{
            TitleAndFieldView(title: "活動標題", textField: "例：北大武單攻", textInFeild: textInFeild)
            //
            TitleAndFieldView(title: "活動說明", textField: "簡述", textInFeild: textInFeild)
            //
            Text("活動類型")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("GreenGrass"))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding([.top, .leading], 8.0)
           
            HStack {
                CheckboxField(
                    id: Type.郊山.rawValue,
                    label: Type.郊山.rawValue,
                    callback: checkboxSelected
                )
                CheckboxField(
                    id: Type.百岳.rawValue,
                    label: Type.百岳.rawValue,
                    callback: checkboxSelected
                )
            }.padding(.leading, 8.0)

            Divider()
            
            TitleAndFieldView(title: "活動地點", textField: "例：北大武山", textInFeild: textInFeild)
            //
            Text("活動人數")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("GreenGrass"))
                .padding([.top, .leading], 8.0)
            Stepper(value: $numberOfPeople, in: 2...100){
                Text("\(numberOfPeople) 人")}
                .font(.title3)
                .foregroundColor(Color("GrayLight"))
                .padding(.leading, 8.0)
                .padding(.trailing, 200)
            Divider()
        }//Group
            Group{
                Text("等級")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("GreenGrass"))
                    .padding([.top, .leading], 8.0)
                HStack {
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()
                            }
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)
                    }.padding(.leading, 8.0)
                    Text("Lv.1")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                        .padding(.trailing, 20)
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()
                            }
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)
                    }
                    Text("Lv.2")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                        .padding(.trailing)
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()}
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)}
                    Text("Lv.3")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                } //check box (HStack)
                HStack {
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()
                            }
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)
                    }.padding(.leading, 8.0)
                    Text("Lv.4")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                        .padding(.trailing)
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()
                            }
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)
                    }
                    Text("Lv.5")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                        .padding(.trailing)
                }//check box (HStack)
                Divider()
                //
                Text("海拔")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("GreenGrass"))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding([.top, .leading], 8.0)
                HStack {
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()
                            }
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)
                    }.padding(.leading, 8.0)
                    Text("<1500 m")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                        .padding(.trailing)
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()}
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)}
                    Text("1500-3000 m")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                } //check box (HStack)
                HStack {
                    Button(action:{
                        if !self.checked{
                            withAnimation{
                                self.checked.toggle()
                            }
                        }else{
                            withAnimation{
                                self.checked.toggle()}
                        }
                    }){
                        CheckBoxView(checked: $checked)
                    }.padding(.leading, 8.0)
                    Text(">3000 m")
                        .font(.title3)
                        .foregroundColor(Color("GrayLight"))
                        .padding(.trailing)}
            }
            
            Spacer()
                .padding(.vertical)
                Button(action: { self.showAlert = true }) {
                Text("建立活動")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.all, 10)
                    .frame(width: UIScreen.main.bounds.width - 40)
                    .background(Color("GreenGrass"))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.leading, 6.0)
            }
        
        } //VStack
        .padding(.leading)
        }//scrollView
        .alert( isPresented: $showAlert){
            Alert(title: Text("已建立活動完成")
                    .font(.headline)
                    .foregroundColor(Color("GreenGrass")))
        }
    }
    func checkboxSelected(id: String, isMarked: Bool) {
        print("\(id) is marked: \(isMarked)")
    }
    
    func saveTodo() {
            print("title")
 
            }

struct NewActView_Previews: PreviewProvider {
    static var previews: some View {
        NewActView()
     }
  }

}

//chech box

struct CheckBoxView: View{
    @Binding var checked: Bool
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 4)
                .stroke(style: StrokeStyle(lineWidth: 0.8))
                .frame(width: 20, height: 20)
                .foregroundColor(Color("GrayLight").opacity(0.8))
                
            if checked{
                Image(systemName: "checkmark")
                    .foregroundColor(Color("GreenGrass"))
            }
        }
    }
}
//title and text field
struct TitleAndFieldView: View {
    
    var title: String
    var textField: String
    @State var textInFeild: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("GreenGrass"))
                .padding([.top, .leading], 8.0)
            
            TextField(textField, text: $textInFeild)
                .font(.title3)
                .padding(.leading, 8.0)
                
            Divider()
        }
    }
}
//check box
struct CheckboxField: View {
    let id: String
    let label: String
    let callback: (String, Bool)->()

    init(
        id: String,
        label:String,
        callback: @escaping (String, Bool)->()
        ) {
        self.id = id
        self.label = label
        self.callback = callback
    }

    @State var isMarked:Bool = false

    var body: some View {
        Button(action:{
            self.isMarked.toggle()
            self.callback(self.id, self.isMarked)
        }) {
            HStack{
                Image(systemName: self.isMarked ? "checkmark.square.fill" : "square")
                    .font(.system(size: 24, weight: .thin))
                    .foregroundColor(self.isMarked ? Color("GreenGrass") : Color("GrayLight"))
                    
                Text(label)
                    .font(.title3)
                    .foregroundColor(Color("GrayLight"))
            }.padding(.top
            )
        }
    }
}

enum Type: String {
    case 郊山
    case 百岳
    
}

