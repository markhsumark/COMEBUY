//
//  DrinkBlock.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import Foundation
import SwiftUI

struct DrinkBlock: View {
    var drink: Drink
    @State private var show = false
    var body: some View {
        
        VStack{
            if show {
                Image(drink.name)
                    .resizable()
                    .frame(width: 90, height: 130)
                    .clipShape(Capsule())
                    .transition(.slide)
                Text(drink.name)
                    .transition(.slide)
                Text("$\(drink.price)")
                    .transition(.slide)
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
            .border(Color.orange, width: 10)
    }
}
