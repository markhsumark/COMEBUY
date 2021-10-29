//
//  HomePage.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import SwiftUI

struct HomePage: View {
    @State private var currentPage = 0
    let activity = ["9月玩火", "2月雙Q粉條奶茶"]
    let milkTeaList = [
        Drink(name:"招牌奶茶", price: "45", info: "none"),
        Drink(name:"仙草凍奶茶", price: "45", info: "none"),
        Drink(name:"玩火奶茶", price: "45", info: "none"),
        Drink(name:"玫瑰普洱奶茶", price: "45", info: "none"),
        Drink(name:"珍珠奶茶", price: "45", info: "none"),
        Drink(name:"海神奶茶", price: "45", info: "none"),
        Drink(name:"港式厚奶", price: "45", info: "none"),
        Drink(name:"粉條奶茶", price: "45", info: "none"),
        Drink(name:"粉條奶茶", price: "45", info: "none"),
        Drink(name:"絕代雙Q奶茶", price: "45", info: "none"),
        Drink(name:"黃金奶綠", price: "45", info: "none"),
        Drink(name:"鮮萃麥香奶茶", price: "45", info: "none")
    ]
    let juiceList = [
        Drink(name:"金桔檸檬", price: "45", info: "none"),
        Drink(name:"粉漾野莓多多", price: "45", info: "none"),
        Drink(name:"荔枝玉露", price: "45", info: "none"),
        Drink(name:"超桔霸氣飲", price: "45", info: "none"),
        Drink(name:"蜂蜜蘆薈", price: "45", info: "none"),
        Drink(name:"纖美小紫蘇", price: "45", info: "none")
    ]
    var body: some View {
        NavigationView{
            TabView{
                VStack {
                    TabView(selection: $currentPage){
                        Link(destination:
                            URL(string:"http://www.comebuy2002.com.tw/about/about.php")!,label:{
                                Image("icon")
                                    .resizable()
                                    .scaledToFit()
                                    .overlay(Text("官方頁面連結")
                                                .foregroundColor(.gray)
                                             ,alignment:.top)
                        })
                        Link(destination:
                            URL(string:"http://www.comebuy2002.com.tw/products/products.php")!,label:{
                                Image("9月玩火")
                                    .resizable()
                                    .scaledToFit()
                        })
                        Link(destination:
                            URL(string:"http://www.comebuy2002.com.tw/products/products.php")!,label:{
                                Image("2月雙Q粉條奶茶")
                                    .resizable()
                                    .scaledToFit()
                        })
                    }
                    .padding(5)
                    .tabViewStyle(.page)
                    .frame(height: 300)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    List {
                        Section {
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack {
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
                            Text("奶茶系列")
                                .overlay(Capsule().stroke(Color.white))
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
                            Text("果汁系列")
                                .overlay(Capsule().stroke(Color.yellow))
                        }
                        Text("待新增...\n...")
                            .foregroundColor(Color.gray)
                    }
                }
                .tabItem{
                    Label("Home", systemImage: "music.house.fill")
                }
                
                // List 頁面
                VStack {
                    Text("!!")
                }
                .tabItem{
                    Label("Menu", systemImage: "books.vertical.fill")
                }
            }
            .navigationTitle("Home Page")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
