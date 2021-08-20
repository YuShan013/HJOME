//
//  SettingView.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/17.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var selectedOrder = DisplayOrderType.suburb
    @State private var showHunOnly = false
    @State private var showSubOnly = false
    @State private var maxPriceLevel = 5
    
    @EnvironmentObject var settingStore: SettingStore
    
    var body: some View {
        NavigationView {
            Form {
               
                Section(header: Text("")) {
                    
                    Picker(selection: $selectedOrder, label: Text("排列順序")) {
                        ForEach(DisplayOrderType.allCases, id: \.self) {
                            orderType in
                            Text(orderType.text)
                        }
                    }
                      Toggle(isOn: $showHunOnly) {
                            Text("只顯示百岳")
                        }
                    
                    Toggle(isOn: $showSubOnly) {
                          Text("只顯示郊山")
                      }
                    
                    Stepper(onIncrement: {
                        self.maxPriceLevel += 1
                        
                        if self.maxPriceLevel > 5 {
                            self.maxPriceLevel = 5
                        }
                    }, onDecrement: {
                        self.maxPriceLevel -= 1
                        
                        if self.maxPriceLevel < 1 {
                            self.maxPriceLevel = 1
                        }
                    }) {
                        Text("顯示等級  \(  maxPriceLevel) 以下")
                    }
                }
            }
            
            
            .navigationBarTitle("篩選條件")
            
            .navigationBarItems(leading:
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("取消")
                        .foregroundColor(.black)
                })
                
                , trailing:

                Button(action: {
                    self.settingStore.showHunOnly = self.showHunOnly
                    self.settingStore.showSubOnly = self.showSubOnly
                    self.settingStore.displayOrder = self.selectedOrder
                    self.settingStore.maxPriceLevel = self.maxPriceLevel
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("儲存")
                        .foregroundColor(.black)
                })
            )
            
        }
        .onAppear {

            self.selectedOrder = self.settingStore.displayOrder
            self.showHunOnly = self.settingStore.showHunOnly
            self.showSubOnly = self.settingStore.showSubOnly
            self.maxPriceLevel = self.settingStore.maxPriceLevel
        }
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView().environmentObject(SettingStore())
    }
}

