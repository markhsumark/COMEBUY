//
//  SettingView.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/11/4.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView{
            VStack {
                Button(action: {
                    UIApplication.shared.setAlternateIconName(nil)
                }) {
                    Image("icon")
                        .resizable()
                        .scaledToFit()
                }
                Button(action: {
                    UIApplication.shared.setAlternateIconName("icon2")
                }) {
                    Image("icon2")
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(height: 200)
            .navigationTitle("Setting")
        }
    }
}


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
