//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(choiceMade: sender.currentTitle!)
        updateUI(story: storyBrain.story)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)
        
    }
    func updateUI(story: Int){
        storyLabel.text = storyBrain.stories[storyBrain.story].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.story].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.story].choice2, for: .normal)
    }


}

