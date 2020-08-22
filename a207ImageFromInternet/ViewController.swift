//
//  ViewController.swift
//  a207ImageFromInternet
//
//  Created by 申潤五 on 2020/8/22.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    @IBOutlet weak var cView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Start:\(Date().timeIntervalSince1970)")
        
        theImageView.clipsToBounds = true
        theImageView.layer.cornerRadius = 150
        theImageView.layer.borderColor = UIColor.green.cgColor
        theImageView.layer.borderWidth = 3
        
        cView.clipsToBounds = false
        cView.layer.cornerRadius = 150
        cView.layer.shadowRadius = 40         //陰影
        cView.layer.shadowOpacity = 0.8;
        cView.layer.shadowColor = UIColor.black.cgColor
        cView.layer.shadowOffset = CGSize(width: 10, height: 10)

        
        
        
        
        DispatchQueue.global().async {
            if let url = URL(string: "https://image-resizer.cwg.tw/resize/uri/https%3A%2F%2Fcw1.tw%2FCW%2Fimages%2Farticle%2FC1386386999309.jpg/?w=1600"){
                do {
                    let imageData = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        self.theImageView.image = UIImage.init(data: imageData)
                    }
                } catch{
                    print(error.localizedDescription)
                }
            }
        }
        print("End:\(Date().timeIntervalSince1970)")
        

        
       
        
        
        
    }


}

