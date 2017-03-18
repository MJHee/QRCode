//
//  WebViewController.swift
//  QRCode
//
//  Created by MJHee on 2017/3/18.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    var url : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = url! as String
        
        let path = URL(string: str)
        
        let webView = WKWebView(frame: self.view.bounds)
        webView.load(URLRequest(url: path!))
        webView.navigationDelegate = self
        self.view.addSubview(webView)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.title = webView.title
    }
}
