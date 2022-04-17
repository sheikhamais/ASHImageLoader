//
//  ViewController.swift
//  ASHImageLoader
//
//  Created by sheikhamais@gmail.com on 04/11/2022.
//  Copyright (c) 2022 sheikhamais@gmail.com. All rights reserved.
//

import UIKit
import ASHImageLoader

class ViewController: UIViewController
{
    var presentingButton: UIButton =
        {
            let obj = UIButton()
            obj.translatesAutoresizingMaskIntoConstraints = false
            obj.setTitle("Present", for: .normal)
            obj.setTitleColor(.white, for: .normal)
            obj.backgroundColor = .black
            obj.layer.cornerRadius = 12
            return obj
        }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureUI()
    {
        view.backgroundColor = .gray
        presentingButton.addTarget(self, action: #selector(didTapPresenting), for: .touchUpInside)
        view.addSubview(presentingButton)
        NSLayoutConstraint.activate([
            presentingButton.heightAnchor.constraint(equalToConstant: 42),
            presentingButton.widthAnchor.constraint(equalToConstant: 142),
            presentingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentingButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func didTapPresenting()
    {
        let vc = PresentableVC()
        self.present(vc, animated: true)
    }
}

