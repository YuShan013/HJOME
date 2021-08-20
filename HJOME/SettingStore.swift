//
//  SettingStore.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/17.
//

import Foundation
import Combine

enum DisplayOrderType: Int, CaseIterable {
    case suburb = 0
    case hun = 1
    case favoriteFirst = 2
        
    init(type: Int) {
        switch type {
        case 0: self = .suburb
        case 1: self = .hun
        case 2: self = .favoriteFirst
        default: self = .hun
        }
    }
  
    var text: String {
        switch self {
        case .suburb: return "先顯示郊山"
        case .hun: return "先顯示百岳"
        case .favoriteFirst: return "先顯示最愛"
        }
    }
    
    func predicate() -> ((Article, Article) -> Bool) {
        switch self {
        case .suburb: return { $0.suburb && !$1.suburb }
        case .hun: return { $0.isHun && !$1.isHun }
        case .favoriteFirst: return { $0.isFavorite && !$1.isFavorite }
        }
    }
}



final class SettingStore: ObservableObject {
    
    init() {
        UserDefaults.standard.register(defaults: [
            "view.preferences.showHunOnly" : false,
            "view.preferences.showSubOnly" : false,
            "view.preferences.displayOrder" : 1,
            "view.preferences.maxPriceLevel" : 3
        ])
    }
    
    @Published var showHunOnly: Bool = UserDefaults.standard.bool(forKey: "view.preferences.showHunOnly") {
        didSet {
            UserDefaults.standard.set(showHunOnly, forKey: "view.preferences.showHunOnly")
        }
    }
    
    @Published var showSubOnly: Bool = UserDefaults.standard.bool(forKey: "view.preferences.showSubOnly") {
        didSet {
            UserDefaults.standard.set(showSubOnly, forKey: "view.preferences.showSubOnly")
        }
    }
    
    
    @Published var displayOrder: DisplayOrderType = DisplayOrderType(type: UserDefaults.standard.integer(forKey: "view.preferences.displayOrder")) {
        didSet {
            UserDefaults.standard.set(displayOrder.rawValue, forKey: "view.preferences.displayOrder")
        }
    }

    
    @Published var maxPriceLevel: Int = UserDefaults.standard.integer(forKey: "view.preferences.maxPriceLevel") {
        didSet {
            UserDefaults.standard.set(maxPriceLevel, forKey: "view.preferences.maxPriceLevel")
        }
    }
    
}
