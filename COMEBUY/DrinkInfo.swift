//
//  DrinlkInfo.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import SwiftUI

struct DrinkInfo: View {
    var drink: Drink
    var body: some View {
        VStack{
            Image(drink.name)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .scaledToFit()
            Text(drink.info)
        }
        
    }
}

struct DrinkInfo_Previews: PreviewProvider {
    static var previews: some View {
        DrinkInfo(drink: Drink(name: "icon", price: "00", info:"這是一杯好喝的飲料"))
    }
}
