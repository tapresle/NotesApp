//
//  ViewController.swift
//  Notes
//
//  Created by Ted Presley on 12/3/15.
//  Copyright © 2015 Ted Presley. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutWebBrowsingElements()
        
        let website = "http://tedpresley.info/notesapp/"
        let siteURL = NSURL(string: website)
        let siteRequest = NSURLRequest(URL: siteURL!)
        
        loadURLRequest(siteRequest)
        
    }
    
    func layoutWebBrowsingElements() {
        
        // It is actually better to implement a WKWebView directly in code.
        
        let wkWebView = WKWebView(frame: view.bounds)
        webView = wkWebView
        
        wkWebView.translatesAutoresizingMaskIntoConstraints = false
        
        //Auto-Layout Stuff
        
        self.view.addSubview(wkWebView)
        
        let webTopSpaceToContainer = NSLayoutConstraint(item: self.view, attribute: .TopMargin, relatedBy: .Equal, toItem: webView, attribute: .Top, multiplier: 1, constant: 0)
        let webBottomSpaceToContainer = NSLayoutConstraint(item: self.view, attribute: .BottomMargin, relatedBy: .Equal, toItem: webView, attribute: .Bottom, multiplier: 1, constant: -20)
        let webLeadingSpaceToContainer = NSLayoutConstraint(item: self.view, attribute: .LeadingMargin, relatedBy: .Equal, toItem: webView, attribute: .Leading, multiplier: 1, constant: 20)
        
        let webTrailingSpaceToContainer = NSLayoutConstraint(item: self.view, attribute: .TrailingMargin, relatedBy: .Equal, toItem: webView, attribute: .Trailing, multiplier: 1, constant: -20)
        
        let webViewConstaints = [webTopSpaceToContainer,webBottomSpaceToContainer,webLeadingSpaceToContainer,webTrailingSpaceToContainer]
        
        self.view.addConstraints(webViewConstaints)
        
    }
    
    func loadURLRequest(request: NSURLRequest) {
        
        webView?.loadRequest(request)
    }
}

