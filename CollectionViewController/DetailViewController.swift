//
//  DetailViewController.swift
//  CollectionViewController
//
//  Created by Alumno on 28/02/17.
//  Copyright © 2017 JorgeLimo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelAmount: UILabel!
    
    var amount = ""
    var descriptionText = ""
    var image = UIImage()
    var name = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        labelName.text = name;
        labelDescription.text = descriptionText
        labelAmount.text = amount
        
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
