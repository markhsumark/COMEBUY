//
//  MainPage.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/11/4.
//

import SwiftUI

struct MainPage: View {
    var allData: Dictionary<String, Array<Drink>>
    var body: some View {
        VStack {
            Link(destination:
                    URL(string:"http://www.comebuy2002.com.tw/about/about.php")!,label:{
                Image("商標")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400)
                    .overlay(Text("官方頁面連結")
                                .foregroundColor(.gray)
                             ,alignment:.bottom)
            })
            List {
                TabView(){
                    Activity(url: "http://comebuy2002.com.tw/news/detail.php?Key=295", img: "11月玫抹拿鐵檔期")
                    Activity(url: "http://comebuy2002.com.tw/news/detail.php?Key=291", img: "9月玩火")
                    Activity(url: "http://comebuy2002.com.tw/news/detail.php?Key=284", img: "2月雙Q粉條奶茶")
                    Activity(url: "https://www.comebuy2002.com.tw/news/detail.php?Key=263", img: "本月推薦主打 麥香系列")
                    Activity(url: "http://comebuy2002.com.tw/news/detail.php?Key=290", img: "碧螺春 & 纖美小紫蘇")
                }
                .padding(5)
                .tabViewStyle(.page)
                .frame(height: 400)
                .animation(.easeInOut(duration: 1.5), value: show)
                .onAppear{
                    show = true
                }
                Section {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(allData["milkTea"]!){item in
                                Button{
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
                            ForEach(allData["juice"]!){item in
                                Button{
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
            .listStyle(.plain)
            //                    .listRowSeparator(.hidden)
        }
//        .navigationTitle(Text("Comebuy APP"))
//        .navigationBarTitleDisplayMode(.inline)
    }
}

