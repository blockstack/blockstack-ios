//
//  ViewController.swift
//  Blockstack
//
//  Created by Yukan Liao on 03/27/2018.
//

import UIKit
import Blockstack

class ViewController: UIViewController {

    @IBOutlet var signInButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton?.setTitle("Sign In with Blockstack", for: .normal)
        signInButton?.setTitleColor(.white, for: .normal)
        signInButton?.setTitleColor(.white, for: .highlighted)
        signInButton?.backgroundColor = UIColor.black
        signInButton?.addTarget(self, action: #selector(signin), for: UIControlEvents.touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func signin() {
        Blockstack.shared.signIn(redirectURLScheme: "https://blockstack-todos.appartisan.com/",
                                           manifestURI: URL(string: "https://blockstack-todos.appartisan.com/manifest.json")!)
    }
}

