//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Olivia Bishop on 8/21/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func speak(_ sender: Any) {
        
        let utterence = AVSpeechUtterance(string: text.text!)
        utterence.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterence.rate = 0.5;
        utterence.volume = 1.0;
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterence);
    }
    
    @IBAction func speakFrench(_ sender: Any) {
        
        let utterence = AVSpeechUtterance(string: text.text!)
        utterence.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        utterence.rate = 0.5;
        utterence.volume = 1.0;
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterence);
        
    }
    
    @IBAction func speakSpanish(_ sender: Any) {
        
        let utterence = AVSpeechUtterance(string: text.text!)
        utterence.voice = AVSpeechSynthesisVoice(language: "es-MX")
        utterence.rate = 0.5;
        utterence.volume = 1.0;
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterence);
        
        
        
    }
    
    
    
    
}

