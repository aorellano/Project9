//
//  DetailViewController.swift
//  Project 9
//
//  Created by Alexis Orellano on 3/19/19.
//  Copyright © 2019 Alexis Orellano. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        \(detailItem.body)
        </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)

    }
}

//the guard at the beginning unwraps detailItem into itself if it has a value, which makes sure we exit the method if for some
//reason we didn't get any data passed into the detail view controller.
