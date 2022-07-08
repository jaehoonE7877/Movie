//
//  SignUpViewController.swift
//  Movie
//
//  Created by Seo Jae Hoon on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet weak var signUpMainLabel: UILabel!
    @IBOutlet weak var signUpSubLabel: UILabel!
    
    
    @IBOutlet weak var emailTextField: UITextField! { didSet { emailTextField.delegate = self} }
    @IBOutlet weak var passwordTextField: UITextField! { didSet { passwordTextField.delegate = self} }
    @IBOutlet weak var nickNameTextField: UITextField! { didSet { nickNameTextField.delegate = self} }
    @IBOutlet weak var locationTextField: UITextField! { didSet { locationTextField.delegate = self} }
    @IBOutlet weak var recommendTextField: UITextField! { didSet { recommendTextField.delegate = self} }
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var signUpSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpMainLabel.text = "Notfilx"
        signUpMainLabel.textColor = .red
        signUpMainLabel.backgroundColor = .black
        signUpMainLabel.font = UIFont.boldSystemFont(ofSize: 40)
        
        signUpSubLabel.text = "추가 정보 입력"
        signUpSubLabel.textColor = .white
        signUpSubLabel.font = UIFont.systemFont(ofSize: 16)
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 4
        
        signUpSwitch.setOn(true, animated: true)
        signUpSwitch.onTintColor = .red
        signUpSwitch.thumbTintColor = .white
        
        
        designTextField(textFieldName: emailTextField, phText: "이메일 주소 또는 전화번호", phColor: .white, textAlign: .center, textColor: .black, bgColor: .systemGray4, keyboardType: .emailAddress, tfFont: 18, borederStyle: .roundedRect, textSecure: false)
        
        designTextField(textFieldName: passwordTextField, phText: "비밀번호", phColor: .white, textAlign: .center, textColor: .black, bgColor: .systemGray4, keyboardType: .default, tfFont: 18, borederStyle: .roundedRect, textSecure: true)
        
        designTextField(textFieldName: nickNameTextField, phText: "닉네임", phColor: .white, textAlign: .center, textColor: .black, bgColor: .systemGray4, keyboardType: .default, tfFont: 18, borederStyle: .roundedRect, textSecure: false)
        
        designTextField(textFieldName: locationTextField, phText: "위치", phColor: .white, textAlign: .center, textColor: .black, bgColor: .systemGray4, keyboardType: .default, tfFont: 18, borederStyle: .roundedRect, textSecure: false)
        
        designTextField(textFieldName: recommendTextField, phText: "추천 코드 입력", phColor: .white, textAlign: .center, textColor: .black, bgColor: .systemGray4, keyboardType: .default, tfFont: 18, borederStyle: .roundedRect, textSecure: false)
        
        
        
    }
    
    //return 누르면 키보드 내려감
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // textfield design method
    func designTextField(textFieldName: UITextField, phText: String, phColor: UIColor,textAlign: NSTextAlignment, textColor: UIColor, bgColor: UIColor, keyboardType: UIKeyboardType, tfFont: Int, borederStyle: UITextField.BorderStyle, textSecure: Bool ){
        
        textFieldName.attributedPlaceholder = NSAttributedString(string: phText, attributes: [NSAttributedString.Key.foregroundColor : phColor])
        textFieldName.textAlignment = textAlign
        textFieldName.textColor = textColor
        textFieldName.backgroundColor = bgColor
        textFieldName.keyboardType = keyboardType
        textFieldName.font = UIFont.systemFont(ofSize: CGFloat(tfFont))
        textFieldName.borderStyle = borederStyle
        textFieldName.isSecureTextEntry = textSecure
        textFieldShouldReturn(textFieldName)
    }
    
    
   

    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        
        // Exist 변수 -> 비어있으면 : true 잇으면 false
        guard let emailIsEmpty = emailTextField.text?.isEmpty else { return }
        guard let passwordIsEmpty = passwordTextField.text?.isEmpty else { return }
        
        guard let passwordLenght = passwordTextField.text?.count else { return }
        
        
        if  (emailIsEmpty || (passwordIsEmpty || passwordLenght < 6)) {
            
            signUpSwitch.setOn(false, animated: true)     // 조건을 하나라도 만족하지 않으면 off
        
        } else {
            
            signUpSwitch.setOn(true, animated: true)        // 조건을 다 만족해야 on (회원가입 가능)
        }
        
        
        view.endEditing(true)
        
    }
    
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
        
    }
    
    
    
    /* todo

     추천코드는 숫자만 입력되게끔 등 다양한 조건을 설정해보세요.
     */
    
}
