//
//  ViewController.swift
//  LoadURL+Spiner
//
//  Created by Duc Anh on 11/7/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        myImageURL()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func myImageURL() {
        let imageUrl = URL(string: "https://www.lawliberty.org/wp-content/uploads/2017/12/AdobeStock_105994137-1024x680.jpeg")
//        let imageUrl = URL(string: "http://anhdep.pro/wp-content/uploads/2014/06/hinh-nen-dien-thoai-mau-xanh-dep-nhat-1.jpg")
        DispatchQueue.global().async {
            let imageData = NSData(contentsOf: imageUrl!)
            DispatchQueue.main.async {
                let image = UIImage(data: imageData! as Data)
                self.myImageView.image = image
//                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
            }
        }
    }
    
    
    
}

