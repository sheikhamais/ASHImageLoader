//
//  PresentableVC.swift
//  ASHImageLoader_Example
//
//  Created by Amais Sheikh on 17/04/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import ASHImageLoader

class PresentableVC: UIViewController
{
    var imageView: UIImageView?
//        {
//            let obj = UIImageView(url: )
//            obj.translatesAutoresizingMaskIntoConstraints = false
//            obj.contentMode = .scaleAspectFit
//            obj.backgroundColor = .white
//            return obj
//        }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureUI()
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1)
//        {
//            let imageUrl = "https://i.picsum.photos/id/237/536/354.jpg?hmac=i0yVXW1ORpyCZpQ-CknuyV-jbtU7_x9EBQVhvT5aRr0"
////            let imageUrl = "asdf"
//            self.imageView.loadImage(fromUrl: imageUrl, placeholderImage: UIImage(named: "cancel"))
//        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let imageUrl = "https://i.picsum.photos/id/237/536/354.jpg?hmac=i0yVXW1ORpyCZpQ-CknuyV-jbtU7_x9EBQVhvT5aRr0"
//            let imageUrl = "asdf"
        
        let obj = UIImageView(url: imageUrl)//, placeholderImage: UIImage(named: "cancel"))
//        obj.loadImage(fromUrl: imageUrl, placeholderImage: UIImage(named: "cancel"))
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.contentMode = .scaleAspectFit
        obj.backgroundColor = .white
        self.imageView = obj
        
        configureUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureUI()
    {
        guard let imageView = imageView
        else { return }
        
        view.backgroundColor = .gray
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
}

