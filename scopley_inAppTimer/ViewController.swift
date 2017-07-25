//
//  ViewController.swift
//  scopley_inAppTimer
//
//  Created by Michael Rawlings on 7/25/17.
//  Copyright © 2017 Michael Rawlings. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var seconds = 30
    var timer = Timer()

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBAction func slider(_ sender: UISlider) {
        seconds = Int(sender.value)
        label.text = String(seconds)
    }
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBAction func start(_ sender: Any)
        {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        }
    
    func counter()
    {
        seconds -= 1
        label.text = String(seconds)
        
        if (seconds == 0)
        {
            timer.invalidate()
        }
    }
    
    @IBOutlet weak var stopOutlet: UIButton!
    @IBAction func stop(_ sender: Any)
        {
            timer.invalidate()
            seconds = 30
            sliderOutlet.setValue(30, animated: true)
            label.text = "30"
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

