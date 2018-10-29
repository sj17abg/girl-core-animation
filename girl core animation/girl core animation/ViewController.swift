//
//  ViewController.swift
//  girl core animation
//
//  Created by sj17abg on 29/10/2018.
//  Copyright © 2018 CSStestuser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sunImage: UIImageView!
    
    @IBOutlet weak var balloonImage: UIImageView!
    @IBOutlet weak var walkingImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageArray: [UIImage]!
        imageArray=[UIImage(named:"walking1.png")!,
                    UIImage(named:"walking2.png")!,
                    UIImage(named:"walking3.png")!,
                    UIImage(named:"walking4.png")!,
                    UIImage(named:"walking5.png")!,
                    UIImage(named:"walking6.png")!,
                    UIImage(named:"walking7.png")!,
                    UIImage(named:"walking8.png")!,
                    UIImage(named:"walking9.png")!,
                    UIImage(named:"walking10.png")!,
                    UIImage(named:"walking11.png")!,
                    UIImage(named:"walking12.png")!,
                    UIImage(named:"walking13.png")!]
        walkingImage.image=UIImage.animatedImage(with: imageArray, duration: 1)
        UIView.animate(withDuration: 2,delay:0.0,options:[UIViewAnimationOptions.repeat, .curveLinear],animations: {self.sunImage.alpha=0.0
            self.balloonImage.center.x += self.view.bounds.width
        },completion:nil)
        // withduration:just for the balloon and sun, delay:when sun goes from light to stop ,it will light again without any delay. completion: will refeat again , nothing will happen.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

