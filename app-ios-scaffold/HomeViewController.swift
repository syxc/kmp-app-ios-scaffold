//
//  HomeViewController.swift
//  app-ios-scaffold
//
//  Created by syxc on 2024/1/22.
//

import UIKit
import KMPShared

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("Hello %@", "HomeViewController")
        initView()
    }
    
    private func initView() {
        let info = Greeting().greet()
        let infoTextView = UITextView(frame: CGRect(x: 16, y: 100, width: self.view.frame.width - 32, height: 40))
        infoTextView.text = "From KMP: \(info)"
        infoTextView.font = UIFont.systemFont(ofSize: 20)
        infoTextView.textColor = .black
        self.view.addSubview(infoTextView)
        NSLog("来自 KMP 的内容：%@", info)
    }
    
}

