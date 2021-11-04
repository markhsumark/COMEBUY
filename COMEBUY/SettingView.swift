//
//  SettingView.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/11/4.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical){
                let columns = [GridItem()]
                LazyVGrid(columns: columns){
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                    }) {
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("pinkIcon")
                    }) {
                        Image("pinkIcon")
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                    }
                }.frame(width: 250)
            }
            .navigationTitle("Setting")
        }
    }
}


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
