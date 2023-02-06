//
//  ViewController.swift
//  Animation
//
//  Created by Ryotaro Yabuzuka on 2023/02/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(sender: UIButton){
        
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }
        
//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }) { (_) in
//            //completionには、終わった後に起こる内容を書く
//            //identityは元に戻ること
//            self.imageView.transform = CGAffineTransform.identity
//        }
        
//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }) {(_) in
//            UIView.animate(withDuration: 1.0) {
//                self.imageView.transform = CGAffineTransform.identity
//            }
        
        //バネっぽく動く
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.01, initialSpringVelocity: 0.01, options: .curveLinear,animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 100)
        }) {(_) in
            UIView.animate(withDuration: 1.0) {
                self.imageView.transform = CGAffineTransform.identity
            }
        }
    }

}

