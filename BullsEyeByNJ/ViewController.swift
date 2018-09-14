//
//  ViewController.swift
//  BullsEyeByNJ
//
//  Created by Nilaykumar Jha on 2018-09-14.
//  Copyright © 2018 Nilaykumar Jha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sliderValue:Int = 40;
    var targetValue: Int = 0;
    var score: Int = 0;
    var round: Int = 1;
    
    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resetGame()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showHitMeAlert() {
        let alert = UIAlertController(title: "hello World", message: "Score \(sliderValue) and target \(targetValue)", preferredStyle: .alert);
        
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil);
        
        alert.addAction(action);
        
        present(alert, animated: true, completion: nil);
    }
    
    @IBAction func sliderMoved (_ slider: UISlider) {
        sliderValue = Int(slider.value.rounded());
    }
    
    func randomNum() -> Int {
        return 1  + Int(arc4random_uniform(UInt32(100)))
    }
    
    func startRound() -> Void {
        self.sliderValue = Int(self.slider.value.rounded())
        self.targetValue = self.randomNum();
    }
    func resetGame() -> Void {
        self.score = 0;
        self.round = 1;
        self.scoreLabel.text = String(self.score);
        self.roundLabel.text = String(self.round);
        startRound();
    }
    
    //    func calculateScore() {
    //
    //    }
    
}
