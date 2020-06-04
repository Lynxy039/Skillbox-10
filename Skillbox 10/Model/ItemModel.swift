//
//  ItemModel.swift
//  Skillbox 10
//
//  Created by Антон Тимоненков on 23.05.2020.
//  Copyright © 2020 Антон Тимоненков. All rights reserved.
//

import Foundation

public struct Item {
  var name: String
  var price: Int
  var discount: Int
  var pic: String
}

extension Item{
  public static func procurement() -> [Item]{
    let items = [
      Item(name: "Футболка", price: 400, discount: 300, pic: "11"),
      Item(name: "Куртка", price: 3000, discount: 2490, pic: "22"),
      Item(name: "Джинсы", price: 1500, discount: 1390, pic: "33"),
      Item(name: "Спанч Боб", price: 9000, discount: 8999, pic: "44"),
      Item(name: "Фантазия", price: 4000, discount: 999, pic: "55"),
      Item(name: "Кончилась", price: 1000, discount: 0, pic: "66")
    ]
    return items
  }
}

