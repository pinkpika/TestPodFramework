//
//  ViewController.swift
//  DemoTestPodFramework
//
//  Created by cm0630 on 2022/1/16.
//

import UIKit
import TestPodFramework

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let cake = Cake()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cakeVC = CakeViewController.instantiate()
        navigationController?.pushViewController(cakeVC, animated: true)
        
        let cakeView = CakeView.instantiateFirstView(owner: nil)
        view.addSubview(cakeView)
    }
}

