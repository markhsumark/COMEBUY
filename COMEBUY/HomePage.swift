//
//  HomePage.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import SwiftUI

struct HomePage: View {
    let activity = ["9月玩火", "2月雙Q粉條奶茶"]
    let milkTeaList = [
        Drink(name:"招牌奶茶", price: "(L)45", info: " 採用世界第一品牌奶精，搭配錫蘭紅茶，並用專屬COMEBUY的黃金比例調製，使用蔗糖與紅蔗糖，品嚐甜潤繞口的奶茶。"),
        Drink(name:"仙草凍奶茶", price: "(L)60", info: "    以滑Q順口的關西仙草凍，加入擁有紅茶甜潤與牛奶香醇的招牌奶茶，利用仙草的甘澀，帶給奶茶另一種甜而不膩的滋味，並讓你享受到大口爽快的仙草躍動。"),
        Drink(name:"玩火奶茶", price: "(L)55", info: "獨特日式煎茶調製奶茶，淡淡水果清香，讓奶茶清爽不膩。"),
        Drink(name:"玫瑰普洱奶茶", price: "(L)55", info: "這是一杯好喝的飲料"),
        Drink(name:"珍珠奶茶", price: "(L)50", info: "   濃醇的奶茶加上QQ珍珠的絕佳口感，濃情甜蜜的好滋味留存在心頭。"),
        Drink(name:"海神奶茶", price: "(L)55", info: "獨特日式煎茶調製奶茶，淡淡蜂蜜清香，讓奶茶清爽不膩。"),
        Drink(name:"港式厚奶", price: "(限中杯)65", info: "    香港國民聖飲，嚴選當地原料黑白淡奶，與眾不同的經典口感，帶出香醇濃厚的絕妙滋味。"),
        Drink(name:"粉條奶茶", price: "(L)55", info: "這是一杯好喝的飲料"),
        Drink(name:"絕代雙Q奶茶", price: "(L)55", info: "香醇的招牌奶茶內，加入Q彈的大珍珠 X 芋圓 X 薯圓，絕妙的雙重口感，是COMEBUY銷售第一的明星商品，每日熱銷10000杯。"),
        Drink(name:"黃金奶綠", price: "(L)45", info: "  採用世界第一品牌奶精，搭配獨門醺香的黃金綠茶，用專屬COMEBUY的黃金比例調製，使用蔗糖與紅蔗糖，品嚐甜潤繞口的奶茶。"),
        Drink(name:"鮮萃麥香奶茶", price: "(L)50", info: "大麥煎焙炒香搭配柔滑奶香，組合完美口感")
    ]
    let juiceList = [
        Drink(name:"金桔檸檬", price: "(L)50", info: "    新鮮金桔原汁的維他命C健康滋味，冰冰喝清新爽快，熱熱喝有潤喉的感覺，是杯營養十足的飲品。"),
        Drink(name:"粉漾野莓多多", price: "(L)70", info: "    好菌多多養樂多，加入含有豐富花青素莓類，酸甜好滋味，大人小孩都愛喝。"),
        Drink(name:"荔枝玉露", price: "(L)50", info: "    香甜清爽的荔汁果汁搭配獨家荔枝凍，含有豐富維生素，清香甜蜜的消暑水果飲品。不適合體熱者飲用。"),
        Drink(name:"超桔霸氣飲", price: "(L)45", info: "    金桔原汁加上古法化應子的調配組合，酸甜迷人風味，東方古法重現的極致匠心飲品。"),
        Drink(name:"蜂蜜蘆薈", price: "(L)45", info: "    優質蜂蜜搭配爽口蘆薈果肉，夏日輕盈風味又清爽的飲品。因含有蘆薈，孕婦忌食。"),
        Drink(name:"纖美小紫蘇", price: "(L)60", info: "    玫瑰果露加上新鮮桔汁，搭配愛玉及小紫蘇，風味清爽且呈現豐富飽足的口感。"),
        Drink(name:"芭樂多多", price: "(L)85", info: "使用土芭樂及檸檬原汁，豐富纖維，甜香多C，杯杯含有豐富的乳酸菌，讓腸內有益菌增加，有助於腸道運動。")

    ]
    var body: some View {
        NavigationView{
            TabView{
                VStack {
                    Link(destination:
                        URL(string:"http://www.comebuy2002.com.tw/about/about.php")!,label:{
                            Image("商標")
                                .resizable()
                                .scaledToFit()
                                .overlay(Text("官方頁面連結")
                                            .foregroundColor(.gray)
                                         ,alignment:.bottom)
                    })
                    List {
                        TabView(){
                            Activity(url: "http://www.comebuy2002.com.tw/products/products.php", img: "9月玩火")
                            Activity(url: "http://www.comebuy2002.com.tw/products/products.php", img: "2月雙Q粉條奶茶")
                            Activity(url: "https://www.comebuy2002.com.tw/news/detail.php?Key=263", img: "本月推薦主打 麥香系列")
                        }
                        .padding(5)
                        .tabViewStyle(.page)
                        .frame(height: 300)
                        Section {
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    ForEach(milkTeaList){item in
                                        NavigationLink{
                                            DrinkInfo(drink: item)
                                        }label:{
                                            DrinkBlock(drink: item)
                                        }
                                    }
                                }
                            }
                        }header:{
                            Text("奶茶").foregroundColor(.orange).font(.title3) + Text("系列")
                                
                        }
                        Section {
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack {
                                    ForEach(juiceList){item in
                                        NavigationLink{
                                            DrinkInfo(drink: item)
                                        }label:{
                                            DrinkBlock(drink: item)
                                        }
                                    }
                                }
                            }
                        }header:{
                            Text("果汁").foregroundColor(.yellow).font(.title3) + Text("系列")
                        }
                        Text("待新增...\n...")
                            .foregroundColor(Color.gray)
                    }
                }
                .tabItem{
                    Label("Home", systemImage: "music.house.fill")
                }
                
                // List 頁面
                
                ZStack(alignment: .bottomTrailing) {
                    
                    VStack {
                        ScrollView(.vertical){
                            let columns = Array(repeating: GridItem(), count: 2)
                            LazyVGrid(columns: columns){
                                ForEach(milkTeaList){item in
                                    NavigationLink{
                                        DrinkInfo(drink: item)
                                    }label:{
                                        DrinkRow(drink: item)
                                    }
                                }
                                ForEach(juiceList){item in
                                    NavigationLink{
                                        DrinkInfo(drink: item)
                                    }label:{
                                        DrinkRow(drink: item)
                                    }
                                }
                            }
                        }
                    }
                    NavigationLink{
                        Menu()
                    }label:{
                        Capsule()
                            .fill(.white)
                            .frame(width: 120, height: 60)
                            .overlay(Label("菜單", systemImage: "newspaper")
                                        .font(.system(size: 30)))
                    }
                    .offset(x: -30)
                }
                .tabItem{
                    Label("Menu", systemImage: "books.vertical.fill")
                }
            }
            .navigationTitle(Text("Comebuy Home Page"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .preferredColorScheme(.dark)
    }
}