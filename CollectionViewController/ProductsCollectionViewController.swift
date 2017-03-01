//
//  ProductsCollectionViewController.swift
//  CollectionViewController
//
//  Created by Alumno on 28/02/17.
//  Copyright © 2017 JorgeLimo. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

//UICollectionViewDelegateFlowLayout
class ProductsCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    
    var items = Array<Item>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionView!.dataSource! = self
        
        for i in 0...7 {
            let item = Item();
            item.nombre = "Item \(i)"
            item.price = Double(i) * 100.0
            item.imagen = UIImage(named: "image_\(i)")
            items.append(item);
        }
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        /*
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
         */
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemCollectionViewCell
    
        // Configure the cell
        let indice = indexPath.row
        let item = items[indice]
        
        cell.labelName.text = item.nombre
        cell.labelPrice.text = "S/ \(item.price!)"
        cell.imageView.image = item.imagen
        
        cell.layer.borderWidth = 1
    
        
        //let width = self.view.frame.width/2-10-10
        //let height = self.view.frame.height
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
