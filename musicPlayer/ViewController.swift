//
//  ViewController.swift
//  musicPlayer
//
//  Created by Rishabh Bhandari on 30/05/19.
//  Copyright © 2019 Rishabh Bhandari. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer = AVAudioPlayer()
    

    @IBAction func play(_ sender: Any) {
        audioPlayer.play()
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
        audioPlayer.pause()
    }
    
    
    @IBAction func replay(_ sender: Any) {
        
        audioPlayer.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do {
        let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
        try
            audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            print ("error")
        }
        
        
    }


}

