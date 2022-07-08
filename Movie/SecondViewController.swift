//
//  SecondViewController.swift
//  Movie
//
//  Created by Seo Jae Hoon on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //아웃렛변수
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var bannerimageView: UIImageView!
    
    @IBOutlet weak var movieButton: UIButton!
    
    
    //뷰컨트롤러 생명주기 종류 중 하나
    // 사용자에게 화면이 보이기 직전에 실행되는 코드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        bannerimageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        bannerimageView.layer.cornerRadius = 10
        bannerimageView.layer.borderWidth = 5
        bannerimageView.layer.borderColor = UIColor.blue.cgColor
        
        movieTitleLabel.text = "영화이름"
        movieTitleLabel.backgroundColor = .lightGray
        movieTitleLabel.textColor = .black
        movieTitleLabel.font = UIFont.boldSystemFont(ofSize: 25)
        movieTitleLabel.layer.cornerRadius = 4
        
        movieButton.setTitle("눌러주세요", for: .normal)
        movieButton.setTitleColor(.systemRed, for: .normal)
        movieButton.backgroundColor = .lightGray
        movieButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        movieButton.layer.cornerRadius = 4
        
    }
    
    
    //버튼은 Touch up Inside 됐을 때 함수가 실행된다.
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        
        let movieNum = Int.random(in: 1...20)
        
        bannerimageView.image = UIImage(named: "movie\(movieNum)")
        
        // movie text
        switch movieNum {
        case 1:
            movieTitleLabel.text = "암살"
        case 2:
            movieTitleLabel.text = "태극기 휘날리며"
        case 3:
            movieTitleLabel.text = "명량"
        case 4:
            movieTitleLabel.text = "배테랑"
        case 5:
            movieTitleLabel.text = "국제시장"
        case 6:
            movieTitleLabel.text = "해운대"
        case 7:
            movieTitleLabel.text = "택시운전사"
        case 8:
            movieTitleLabel.text = "왕의 남자"
        case 9:
            movieTitleLabel.text = "어벤져스 엔드게임"
        case 10:
            movieTitleLabel.text = "알라딘"
        case 11:
            movieTitleLabel.text = "아바타"
        case 12:
            movieTitleLabel.text = "신과함께 1"
        case 13:
            movieTitleLabel.text = "신과함께 2"
        case 14:
            movieTitleLabel.text = "부산행"
        case 15:
            movieTitleLabel.text = "도둑들"
        case 16:
            movieTitleLabel.text = "극한직업"
        case 17:
            movieTitleLabel.text = "괴물"
        case 18:
            movieTitleLabel.text = "광해"
        case 19:
            movieTitleLabel.text = "얼음왕국"
        case 20:
            movieTitleLabel.text = "7번방의 선물"
        default:
            movieTitleLabel.text = "영화이름"
        }
        
    }
}
