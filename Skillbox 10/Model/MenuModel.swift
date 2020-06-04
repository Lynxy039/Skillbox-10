//
//  MenuModel.swift
//  Skillbox 10
//
//  Created by Антон Тимоненков on 25.05.2020.
//  Copyright © 2020 Антон Тимоненков. All rights reserved.
//

import Foundation
struct Menu {
  var pic: String
  var name: String
  var status: String
  var switchButton: Bool
  var disclosure: Bool
  var alert: Int
}
struct Section {
  var name: String
  var cells: [Menu]
}
extension Section{
  public static func addCells() -> [Section]{
    let sec1 = Section(name: "", cells: [
      Menu(pic: "airplane", name: "Авиарежим", status: "", switchButton: true, disclosure: false, alert: 0),
      Menu(pic: "wifi", name: "Wi-Fi", status: "Anvics-YOTA", switchButton: false, disclosure: true, alert: 0),
      Menu(pic: "bluetooth", name: "Bluetooth", status: "Вкл.", switchButton: false, disclosure: true, alert: 0),
      Menu(pic: "connection", name: "Сотовая связь", status: "", switchButton: false, disclosure: true, alert: 0),
      Menu(pic: "modem", name: "Режим модема", status: "", switchButton: false, disclosure: true, alert: 0)
    ])
    let sec2 = Section(name: "", cells: [
      Menu(pic: "notifications", name: "Уведомления", status: "", switchButton: false, disclosure: true, alert: 0),
      Menu(pic: "sounds", name: "Звуки, тактильные сигналы", status: "", switchButton: false, disclosure: true, alert: 0),
      Menu(pic: "moon", name: "Не беспокоить", status: "", switchButton: false, disclosure: true, alert: 0),
      Menu(pic: "sandwatch", name: "Экранное время", status: "", switchButton: false, disclosure: true, alert: 0),
    ])
    let sec3 = Section(name: "", cells: [
      Menu(pic: "gear", name: "Основные", status: "", switchButton: false, disclosure: true, alert: 1),
      Menu(pic: "switches", name: "Пункт управления", status: "", switchButton: false, disclosure: true, alert: 0),
      Menu(pic: "aA", name: "Screen", status: "", switchButton: false, disclosure: true, alert: 0)
    ])
    return [sec1, sec2, sec3]
  }
}
