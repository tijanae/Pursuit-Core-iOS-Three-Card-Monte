//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var cards = CardStatus()
    
    @IBOutlet weak var cardOne: UIButton!
    @IBOutlet weak var cardTwo: UIButton!
    @IBOutlet weak var cardThree: UIButton!
    
    @IBOutlet weak var winingLabel: UILabel!
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
  
    cards.randomizedCards()
    
  }
    @IBAction func threeCards(_ sender: UIButton) {
        if sender.tag == 0 {
            if cards.card1 == 2 {
                cardOne.setImage(UIImage(named: "kingCard"), for: .normal)
                winingLabel.text = "You Win!"
                cardTwo.isEnabled = false
                cardThree.isEnabled = false
            } else if cards.card1 != 2 {
                cardOne.setImage(UIImage(named: "threeCard"), for: .normal)
                winingLabel.text = "Better Luck Next Time"
                cardTwo.isEnabled = false
                cardThree.isEnabled = false
            }
        } else if sender.tag == 1 {
            if cards.card2 == 2{
                cardTwo.setImage(UIImage(named: "kingCard"), for: .normal)
                winingLabel.text = "You Win!"
                cardOne.isEnabled = false
                cardThree.isEnabled = false
            }else if cards.card2 != 2 {
                cardTwo.setImage(UIImage(named: "threeCard"), for: .normal)
                winingLabel.text = "Better Luck Next Time"
                cardOne.isEnabled = false
                cardThree.isEnabled = false
            }
        } else if sender.tag == 2 {
            if cards.card3 == 2 {
                cardThree.setImage(UIImage(named: "kingCard"), for: .normal)
                winingLabel.text = "You Win!"
                cardOne.isEnabled = false
                cardTwo.isEnabled = false
            }else if cards.card3 != 2{
                cardThree.setImage(UIImage(named: "threeCard"), for: .normal)
                winingLabel.text = "Better Luck Next Time"
                cardOne.isEnabled = false
                cardTwo.isEnabled = false
            }
        }
    }
    
    
    func playSomeMore () {
        cardOne.setImage(UIImage(named: "cardBackRed"), for: .normal)
        cardOne.isEnabled = true
        cardTwo.setImage(UIImage(named: "cardBackRed"), for: .normal)
        cardTwo.isEnabled = true
        cardThree.setImage(UIImage(named: "cardBackRed"), for: .normal)
        cardThree.isEnabled = true
        cards.randomizedCards()
        
    }
    
    @IBAction func playSomeMoreButton(_ sender: UIButton) {
        if sender.tag == 3 {
            playSomeMore()
            winingLabel.text = "Find Your King!"
        }
    }
}


//  if cards.card1 == (sender as AnyObject).tag {
//cardOne.imageView?.image = #imageLiteral(resourceName: "kingCard")
//winingLabel.text = "You win"
//cards.randomizedCards()
//} else {
//    winingLabel.text = "no one won"
//
//}

