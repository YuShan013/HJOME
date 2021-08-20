//
//  DateButton.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/7.
//

import SwiftUI

struct DateButton: View {
    var title: String
    @StateObject var homeData : HomeViewModel
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(title)
                .padding(.vertical, 10)
                .padding(.horizontal, 10)
                .background(Color.green)
                .cornerRadius(6)
        })
        
    }
}

