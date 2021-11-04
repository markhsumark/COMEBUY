//
//  MenuList.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/11/4.
//

import SwiftUI

struct MenuList: View {
    let data : Array<Drink>
    var body: some View {
        VStack {
            ScrollView(.vertical){
                let columns = Array(repeating: GridItem(), count: 2)
                LazyVGrid(columns: columns){
                    ForEach(data){item in
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
}

//struct MenuList_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuList()
//    }
//}
