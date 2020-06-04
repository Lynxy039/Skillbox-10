//
//  TableViewController.swift
//  Skillbox 10
//
//  Created by Антон Тимоненков on 24.05.2020.
//  Copyright © 2020 Антон Тимоненков. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
  
  private var list = Section.addCells()

  override func viewDidLoad() {
      super.viewDidLoad()
  }
  
}
extension TableViewController: UITableViewDataSource, UITableViewDelegate{
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return list.count
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return CGFloat(20)
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return list[section].cells.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! TableViewCell
    cell.iconImageView.image = UIImage.init(named: list[indexPath.section].cells[indexPath.row].pic)
    cell.nameLable.text = list[indexPath.section].cells[indexPath.row].name
    cell.statusLable.text = list[indexPath.section].cells[indexPath.row].status
    cell.menuSwitch.isHidden = !list[indexPath.section].cells[indexPath.row].switchButton
    if list[indexPath.section].cells[indexPath.row].disclosure {
      cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
    }
    if list[indexPath.section].cells[indexPath.row].alert > 0 {
      cell.alertImageView.isHidden = false
      cell.alertImageView.image = UIImage.init(systemName: "\(list[indexPath.section].cells[indexPath.row].alert).circle.fill")
    } else {
      cell.alertImageView.isHidden = true
    }
    return cell
  }
}
