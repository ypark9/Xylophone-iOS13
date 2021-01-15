//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        switch sender.tag
        {
        case 1:
            //print("C is pressed.")
            playSound(note : "C")
        case 2:
            playSound(note: "D")
        case 3:
            //print("C is pressed.")
            playSound(note : "E")
        case 4:
            //playSound(note: "D")
            playSound(note : "F")
        case 5:
            playSound(note: "G")
        case 6:
            //playSound(note: "D")
            //print("C is pressed.")
            playSound(note : "A")
        case 7:
            playSound(note: "B")
        default:
            print("dont know what is clicked.");
        }
    }
    
    func playSound(note : String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


