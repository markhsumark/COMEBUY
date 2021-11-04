//
//  MenuView.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/11/4.
//

import SwiftUI

struct MenuView: View {
    let allData: Dictionary<String, Array<Drink>>
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                List{
                    NavigationLink{
                        MenuList(data: allData["milkTea"]!)
                    }label:{
                        Label("奶茶系列", systemImage: "folder")
                            .listItemTint(.orange)
                    }
                    NavigationLink{
                        MenuList(data: allData["juice"]!)
                    }label:{
                        Label("果汁系列", systemImage: "folder")
                            .listItemTint(.orange)
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
            .navigationTitle("Menu")
        }
    }
}

//struct MenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuView()
//    }
//}
