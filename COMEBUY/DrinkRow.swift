//
//  DrinkRow.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import Foundation
import SwiftUI


struct DrinkRow: View {
    var drink: Drink
    @State private var show = false
    @State private var isFill = 0
    var Fill = ["", ".fill"]
    var body: some View {
        HStack{
            Image(drink.name)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .transition(.slide)
            Spacer()
            VStack(alignment: .trailing) {
                Text(drink.name)
                Text("$\(drink.price)")
                    .foregroundColor(.blue)
                Button{
                    print("o")
                    isFill += 1
                }label:{
                    Label("", systemImage: "heart\(Fill[isFill % 2])")
                }

            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(drink: Drink(name: "icon", price: "00", info: "AAA"))
            .previewLayout(.sizeThatFits)
            .padding(15)
    }
}
