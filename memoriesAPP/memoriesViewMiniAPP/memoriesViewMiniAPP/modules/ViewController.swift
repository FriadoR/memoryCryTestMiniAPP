//
//  ViewController.swift
//  memoriesViewMiniAPP
//
//  Created by Сергей Саченко on 14.05.2022.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Options
        view.backgroundColor = .black
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        
        // MARK: - View Picture
        
        imageView.animationDuration = 24
        imageView.animationImages = [
            UIImage(named: "crashFirst")!,
            UIImage(named: "crash2")!,
            UIImage(named: "crash3")!,
            UIImage(named: "crash4")!,
            UIImage(named: "crash1")!,
            UIImage(named: "crash5")!,
        ]
        // MARK: - Load Methods
        
        imageView.startAnimating()
        animation()
    }
    
    // MARK: - Method Animation
    final func animation() {
        UIView.animate(withDuration: 2,
                       delay: 2,
                       options: [.repeat, .autoreverse, .curveEaseIn],
                       animations: { self.imageView.alpha = 0 })
    }
}

