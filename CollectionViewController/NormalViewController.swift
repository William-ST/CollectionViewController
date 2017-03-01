//
//  NormalViewController.swift
//  CollectionViewController
//
//  Created by Alumno on 28/02/17.
//  Copyright © 2017 JorgeLimo. All rights reserved.
//

import UIKit

private let reuseIdentifier = "celda"

class NormalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var items = Array<Item>()
    var itemSelect = Item()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionView!.dataSource! = self
        
        for i in 0...7 {
            let item = Item()
            item.nombre = "Item \(i)"
            item.price = Double(i) * 100.0
            item.imagen = UIImage(named: "image_\(i)")
            item.descriptionText = "Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos Lorem ipsos "
            items.append(item);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemCollectionViewCell
        
        // Configure the cell
        let indice = indexPath.row
        let item = items[indice]
        
        cell.labelName.text = item.nombre
        cell.labelPrice.text = "S/ \(item.price!)"
        cell.imageView.image = item.imagen
        
        cell.layer.borderWidth = 1
        
        
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        itemSelect = items[indexPath.row]
        
        self.performSegue(withIdentifier: "detailLink", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detail:DetailViewController = segue.destination as! DetailViewController
        
        detail.image = itemSelect.imagen
        detail.name = itemSelect.nombre
        detail.descriptionText = itemSelect.descriptionText
        detail.amount = "S/. \(itemSelect.price!)"
        
    }
    
    
    
}
