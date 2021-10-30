//
//  DrinlkInfo.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import SwiftUI

struct DrinkInfo: View {
    @State var opacity: Double = 0
    var drink: Drink
    var body: some View {
        VStack{
            Text(drink.name)
                .font(.title)
                .padding(7)
                .overlay(Capsule().stroke())
            Image(drink.name)
                .resizable()
                .scaledToFit()
                .frame(width:500, height: 300)
                .scaledToFit()
                .padding(20)
                .clipShape(Capsule())
                .opacity(opacity)
                .animation(.easeInOut(duration: 1), value: opacity)
                .onAppear {
                    opacity = 1
                }
            List{
                Section{
                    Text(drink.info)
                }header:{
                    Text("介紹")
                }
                Section{
                    Text("$\(drink.price)")
                }header:{
                    Text("價格")
                }
                
            }
        }
        
    }
}

struct DrinkInfo_Previews: PreviewProvider {
    static var previews: some View {
        DrinkInfo(drink: Drink(name: "icon", price: "00", info:"這是一杯好喝的飲料"))
    }
}
