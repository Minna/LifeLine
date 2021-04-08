//
//  ViewController.swift
//  YourStory
//
//  Created by Minna on 08/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    var storyBrain = StoryBrain()
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        
        let choiceSelected = sender.currentTitle!
        storyBrain.nextStoryline(for: choiceSelected)
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateUI() {
        
        storyLabel.text = storyBrain.getStoryText()
        
        choice1Button.setTitle(storyBrain.getChoiceText()[0], for: .normal)
        choice2Button.setTitle(storyBrain.getChoiceText()[1], for: .normal)
        
    }


}

