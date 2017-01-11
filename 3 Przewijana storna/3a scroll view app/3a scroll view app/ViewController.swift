//
//  ViewController.swift
//  3a scroll view app
//
//  Created by Linux on 11.01.2017.
//  Copyright © 2017 pl.mateuszblaszczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
    }
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        
        var scrollWidth = scrollView.frame.size.width
        for x in 0...2  {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            print("New X\(newX)")
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 100, y: (scrollView.frame.size.height / 2) - 100, width: 200, height: 200)
            
            
        }
        // scrollView.backgroundColor = UIColor.blue
        
        // it's not cut items outside the scroll view
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        print("Count: \(images.count)")
    }
   


}

