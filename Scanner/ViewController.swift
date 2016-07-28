//
//  ViewController.swift
//  Scanner
//
//  Created by Pham, Truong on 7/28/16.
//  Copyright © 2016 NathanP. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var toolbar: UIToolbar!
    
    var audioPlayer = AVAudioPlayer()
    var audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("whack", ofType: "mp3")!)
    var playPauseBtn = UIBarButtonItem()
    var musicPaused:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)
        } catch {
            print("Not found")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func stopMusic(sender: AnyObject) {
        var items = toolbar.items!
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        playPauseBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Play, target: self, action: #selector(ViewController.playPause(_:)))
        items[0] = playPauseBtn
        musicPaused = false
    }
    
    @IBAction func playPause(sender: UIBarButtonItem) {
        var items = toolbar.items!
        
        if musicPaused == false {
            playPauseBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Pause, target: self, action: #selector(ViewController.playPause(_:)))
            items[0] = playPauseBtn
            toolbar.setItems(items, animated: true)
            audioPlayer.play()
            musicPaused = true
        } else {
            var items = toolbar.items
            playPauseBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Play, target: self, action: #selector(ViewController.playPause(_:)))
            items![0] = playPauseBtn
            toolbar.setItems(items, animated: true)
            audioPlayer.pause()
            musicPaused = false
        }
    }
}
