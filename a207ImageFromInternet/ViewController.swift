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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Start:\(Date().timeIntervalSince1970)")
        
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

