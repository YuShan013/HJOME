//
//  Article.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/5.
//

import Foundation

struct Article: Identifiable {
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
    var level: String
}



#if DEBUG

let articles = [
    Article( image:"koala", title: "武陵四秀 / 三天兩夜", author: "吳尾熊", locationM: "新竹縣", location: "尖石鄉", actDate: "2021/04/15 -", time: "2021/04/17", numberOfPeople:"nam", numberOfPeople2: "", numerOfMessage: "3", numberOfHeart: "9", detailImage: "four", detail:"畢祿山位於中央山脈的北二段，因中橫公路和820林道的開闢，而成為百岳中較易攀登的高山之一。山友多半由大禹嶺合歡山隧道西口的820林道進出，安排一日單攻、兩天一夜或畢羊縱走(畢祿山至羊頭山)的行程，單日輕裝往返長達20多公里、約需12小時以上，而畢羊縱走更需背負重裝上稜線，通過鋸齒連峰後再從羊頭山步道下山，非健腳者以及雪季期間不宜冒然嘗試。", qual: "1. 有3000公尺以上高山經驗\n2. 四十分鐘內能跑完5公里", register:"baby", question:"Solor\n請問公糧要怎麼分配", level: "3"),
                
    Article( image:"cat", title: "南湖大山 / 四天三夜", author: "小夏", locationM: "臺中市", location: "和平區", actDate:"2021/05/01 -", time: "2021/05/04", numberOfPeople:"baby", numberOfPeople2: "solor", numerOfMessage: "10", numberOfHeart: "16", detailImage: "nam", detail:"素有「帝王之山」美稱的南湖大山，和玉山、雪山、秀姑巒山、北大武山合稱「五嶽」，雄偉壯闊的山勢之外，四周群峰簇擁著高聳的主峰，讓南湖大山更有「帝王之相」。南湖大山也有著上、下完整的圈谷地形，而南湖山屋就位於下圈谷中，如果有空不妨多待一天，好好享受被群峰環繞的感覺。", qual: "1. 有3000公尺以上高山經驗 \n2. 四十分鐘內能跑完5公里", register:"solor", question:"Solor\n請問公糧要怎麼分配", level:"4"),
                
    Article(image:"nam", title: "合歡北峰一日遊", author: "Fox Lin", locationM: "南投縣", location: "仁愛鄉", actDate: "2021/06/21", time: "06:00-18:00", numberOfPeople:"solorr", numberOfPeople2: "", numerOfMessage: "5", numberOfHeart: "20", detailImage: "north", detail:"畢祿山位於中央山脈的北二段，因中橫公路和820林道的開闢，而成為百岳中較易攀登的高山之一。山友多半由大禹嶺合歡山隧道西口的820林道進出，安排一日單攻、兩天一夜或畢羊縱走(畢祿山至羊頭山)的行程，單日輕裝往返長達20多公里、約需12小時以上，而畢羊縱走更需背負重裝上稜線，通過鋸齒連峰後再從羊頭山步道下山，非健腳者以及雪季期間不宜冒然嘗試。", qual: "1. 有3000公尺以上高山經驗 \n2. 四十分鐘內能跑完5公里", register:"namanam", question:"Solor\n請問公糧要怎麼分配", level: "1"),
                
    Article( image:"solorr", title: "畢羊縱走", author: "橘子", locationM:"南投縣", location: "仁愛鄉", actDate:"2021/07/10 -", time: "2021/07/13", numberOfPeople:"nam", numberOfPeople2: "", numerOfMessage: "2", numberOfHeart: "5", detailImage: "bi", detail:"畢祿山位於中央山脈的北二段，因中橫公路和820林道的開闢，而成為百岳中較易攀登的高山之一。山友多半由大禹嶺合歡山隧道西口的820林道進出，安排一日單攻、兩天一夜或畢羊縱走(畢祿山至羊頭山)的行程，單日輕裝往返長達20多公里、約需12小時以上，而畢羊縱走更需背負重裝上稜線，通過鋸齒連峰後再從羊頭山步道下山，非健腳者以及雪季期間不宜冒然嘗試。", qual: "1. 有3000公尺以上高山經驗 \n2. 四十分鐘內能跑完5公里", register:"cat", question:"Solor\n請問公糧要怎麼分配", level: "3")
]
#endif


