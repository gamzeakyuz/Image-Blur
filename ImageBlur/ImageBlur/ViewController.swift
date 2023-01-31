//
//  ViewController.swift
//  ImageBlur
//
//  Created by GAMZE AKYÜZ on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {

    private var imageView: UIImageView {
        let imageView = UIImageView(image: UIImage(named: "background"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.frame = view.bounds
        
        createBlur()
        
    }
    
    func createBlur() {
        let blurEffect = UIBlurEffect(style: .dark)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = view.bounds
        visualEffectView.alpha = 0
        view.addSubview(visualEffectView)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            UIView.animate(withDuration: 0.5){
                visualEffectView.alpha = 1
            }
        }
        
    }


}

