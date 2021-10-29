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
    var body: some View {
        HStack{
            Image(drink.name)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(drink.name)
                Text("$\(drink.price)")
            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(drink: Drink(name: "icon", price: "00", info: "AAA"))
            .previewLayout(.sizeThatFits)
    }
}
