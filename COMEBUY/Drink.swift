//
//  Drink.swift
//  COMEBUY
//
//  Created by 徐易中 on 2021/10/29.
//

import Foundation

struct Drink: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let info: String
}
