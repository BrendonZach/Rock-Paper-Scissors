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
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var computerChoice: UIImageView!
    @IBOutlet weak var yourChoice: UIImageView!
    var imagenames = ["Scissors", "Paper", "TheRock"]
    var userChoice = 4
    @IBOutlet weak var gameMovesView: UIStackView!
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
        
        let randomNumber = Int.random(in: 0...2)
        var botImageView = UIImage(named: imagenames[randomNumber])
        
        computerChoice.image = botImageView
        
        let selectedPoint = ((sender as! AnyObject).location(in: gameMovesView))
        
        for view in rockPaperScissors
        {
            if
                view.frame.contains(selectedPoint)
            {
                userChoice = view.tag
                yourChoice.image = UIImage(named: imagenames[userChoice])
                
                
                
            }
                    
                    
          if randomNumber == userChoice
          {
              textView.text = "Tie game!"
          }
            else if randomNumber == 2 && userChoice == 1
            {
                
                textView.text = "You Lose!"
                
            }
            else if randomNumber == 2 && userChoice == 0
            {
                
                textView.text = "You Win!"
                
            }
            
            else if randomNumber == 1 && userChoice == 2
            {
                
                textView.text = "You Win!"
                
            }
            else if randomNumber == 1 && userChoice == 0
            {
                
                textView.text = "You Lose!"
                
            }
            else if randomNumber == 0 && userChoice == 1
            {
                
                textView.text = "You Win!"
                
            }
            else if randomNumber == 0 && userChoice == 2
            {
                
                textView.text = "You Lose!"
                
            }
            else
            {
                textView.text = "You Lose!"
            }
            
            
        }
    }
    
}

