//
//  ViewController.swift
//  Skillbox 10
//
//  Created by Антон Тимоненков on 21.05.2020.
//  Copyright © 2020 Антон Тимоненков. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
  
  private var items = Item.procurement()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let w = UIScreen.main.bounds.size.width / 2
    return CGSize(width: w, height: w * 1.5)
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! CollectionViewCell
    cell.nameLable.text = items[indexPath.row].name
    cell.priceLable.text = ("\(items[indexPath.row].price) руб.")
    cell.discountLable.text = ("\(items[indexPath.row].discount) руб.")
    cell.itemImageView.image = UIImage.init(named: ("\(items[indexPath.row].pic)"))
    let dis = Double(items[indexPath.row].discount)
    let price = Double(items[indexPath.row].price)
    cell.buyButton.setTitle("\(Int(100 - dis / price * 100))%", for: UIControl.State())
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
    return items.count
  }
  
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    switch kind {
    case UICollectionView.elementKindSectionHeader:
      let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader ,withReuseIdentifier: "headerView", for: indexPath)
      return headerView
    default:
      fatalError("Unexpected element kind")
    }
  }
}
