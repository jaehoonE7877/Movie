//
//  ViewController.swift
//  Movie
//
//  Created by Seo Jae Hoon on 2022/07/04.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var midImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        backgroundImageView.image = UIImage(named: "movie1")
        leftImageView.image = UIImage(named: "movie2")
        midImageView.image = UIImage(named: "movie3")
        rightImageView.image = UIImage(named: "movie4")
        
        leftImageView.layer.cornerRadius = 60
        leftImageView.layer.borderWidth = 2
        leftImageView.layer.borderColor = UIColor.lightGray.cgColor
        midImageView.layer.cornerRadius = 60
        midImageView.layer.borderWidth = 2
        midImageView.layer.borderColor = UIColor.lightGray.cgColor
        rightImageView.layer.cornerRadius = 60
        rightImageView.layer.borderWidth = 2
        rightImageView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    
    @IBAction func playButtonClicked(_ sender: UIButton) {
        
        var randNums = [Int]()

        while randNums.count < 4 {
            var number = Int.random(in: 1...20)
            if !randNums.contains(number){
                randNums.append(number)
            }
        }
        
        
        backgroundImageView.image = UIImage(named: "movie\(randNums[0])")
        leftImageView.image = UIImage(named: "movie\(randNums[1])")
        midImageView.image = UIImage(named: "movie\(randNums[2])")
        rightImageView.image = UIImage(named: "movie\(randNums[3])")
        
    }
    
}

