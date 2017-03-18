//
//  ViewController.swift
//  QRCode
//
//  Created by MJHee on 2017/3/18.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页"
        
        let button = UIButton(frame: CGRect(x: (UIScreen.main.bounds.size.width - 100) * 0.5, y: (UIScreen.main.bounds.size.height - 30) * 0.5, width: 100, height: 30))
        button.setTitle("扫一扫", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(ViewController.buttonAction(_:)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    func buttonAction(_ sender : AnyObject) {
        let scanner = ScannerViewController()
        self.navigationController?.pushViewController(scanner, animated: true)
    }

}

