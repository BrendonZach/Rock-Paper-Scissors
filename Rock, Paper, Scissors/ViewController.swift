//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Brendon Zach on 4/7/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var rockPaperScissors: [UIImageView]!
    
    @IBOutlet weak var computerChoice: UIImageView!
    @IBOutlet weak var yourChoice: UIImageView!
    var imagenames = ["Scissors", "Paper", "TheRock"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      // Do any additional setup after loading the view.
        var scissorsImage = UIImage(named: imagenames[0])
        var paperImage = UIImage(named: imagenames[0])
        var theRockImage = UIImage(named: imagenames[0])
        
        
        
    }

    @IBAction func tapGesture(_ sender: Any)
    {
        
        let randomNumber = Int.random(in: 1...3)
        
        
        
    }
    
}

