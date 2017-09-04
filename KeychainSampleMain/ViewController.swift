//
//  ViewController.swift
//  KeychainSampleMain
//
//  Created by Apinun Wongintawang on 9/1/17.
//  Copyright © 2017 True. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DatatxtView: SMBUITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getData(_ sender: Any) {
        let shareUserDefault = UserDefaults.init(suiteName: "group.sw.testgroup")
        if let text = shareUserDefault?.value(forKey: "key_test") as? String{
            self.DatatxtView.text = text
        }
    }

    @IBAction func setData(_ sender: Any) {
        let text = self.DatatxtView.text
        if !text!.isEmpty {
            let shareUserDefault = UserDefaults.init(suiteName: "group.sw.testgroup")
            shareUserDefault?.set(text, forKey: "key_test")
        }
    }
}

