//
//  StartPage.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import SwiftUI

struct StartPage: View {
    @State var count = 0.0
    var body: some View {
        ZStack{
            Button{
                print("click start")
                count += 1
            }label:{
                Label("", systemImage: "play.circle")
                    .font(.system(size: 50 + count * 10))
                    .animation(.linear, value: count)
            }
            if count >= 10 {
                HomePage()
            }
        }
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
            .preferredColorScheme(.dark)
    }
}
