//
//  Menu.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/30.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack{
            Image("菜單1")
                .resizable()
                .scaledToFit()
            Image("菜單2")
                .resizable()
                .scaledToFit()
            
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
