//
//  ViewController.swift
//  Shaker
//
//  Created by Akkshay Khoslaa on 1/1/15.
//  Copyright (c) 2015 Akkshay Khoslaa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var soundfiles = ["exhale","gun","halloween","helicopter","punch","railroad","roar"]
    var player1:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        
        if event.subtype == UIEventSubtype.MotionShake {
            
            var randomNum:Int = Int(arc4random_uniform(UInt32(soundfiles.count)))
            
            var fileLocation = NSString(string:NSBundle.mainBundle().pathForResource(String(soundfiles[randomNum]), ofType: "mp3")!)
            
            var error:NSError? = nil
            
            player1 = AVAudioPlayer(contentsOfURL: NSURL(string: fileLocation), error: &error)
            
            player1.play()
            
        }
    
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

