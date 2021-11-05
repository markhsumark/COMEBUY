//
//  Activity.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/30.
//

import Foundation
import SwiftUI

struct Activity: View {     //展示活動圖像 &link
    var url: String
    var img: String
    @State private var show = false
    var body: some View {
        
        VStack{
            if show {
                Link(destination:
                    URL(string: url)!,label:{
                        Image(img)
                            .resizable()
                            .scaledToFit()
                })
                    .transition(.slide)
            }
        }
        .animation(.easeInOut(duration: 1.5), value: show)
        .onAppear{
            show = true
        }
    }
}



