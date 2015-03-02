//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Merritte on 3/1/15.
//  Copyright (c) 2015 Merritte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0
    
    func updateTime() {
        
        count++
        time.text = "\(count)"
    }
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        count = 0
        time.text = "0"
        
    }
    
    @IBOutlet weak var time: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

