//
//  ViewController.swift
//  day8CollectionView
//
//  Created by Felix-ITS016 on 21/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var  numberlist = [Int]()
   
    fileprivate let insets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    let numofitem = 4
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return numberlist.count
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let Width = collectionView.bounds.width
        let totalWidth = Width - ((insets.left + insets.right) + (CGFloat(numofitem-1) * insets.left))
        let singleWidth = totalWidth / CGFloat(numofitem)
        return CGSize(width: singleWidth, height: singleWidth)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
     return insets
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        return insets.right
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
          cell.NumberLabel.text = String(numberlist[indexPath.row])
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       for i in 1...30
        {
            numberlist.append(i)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

