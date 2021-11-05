//
//  DrinkBlock.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import Foundation
import SwiftUI


struct DrinkBlock: View {       //直條展示飲品概要的view
    var drink: Drink
    @State private var show = false
    var body: some View {
        
        VStack{
            if show {
                Image(drink.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                    .clipShape(Capsule())
                    .shadow(radius: 5)
                    .padding(6)
                    .transition(.slide)
                Text(drink.name)
                    .transition(.slide)
                    .foregroundColor(.orange)
                Text("$\(drink.price)")
                    .transition(.slide)
                    .foregroundColor(.blue)
            }
        }
        .animation(.easeInOut(duration: 1.5), value: show)
        .onAppear{
            show = true
        }
    }
}


struct DrinkBlock_Previews: PreviewProvider {
    static var previews: some View {
        DrinkBlock(drink: Drink(name: "icon", price: "00", info: "AAA"))
            .previewLayout(.sizeThatFits)
    }
}
