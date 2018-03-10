//
//  HSLoginViewController.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

class HSLoginViewController: HSBaseViewController {

    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var phoneLine: UIView!
    @IBOutlet weak var codeLine: UIView!
    @IBOutlet weak var loginItem: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let padview = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
        phoneTextField.leftView = padview
        phoneTextField.leftViewMode = .always
        
        let padview2 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
        codeTextField.leftView = padview2
        codeTextField.leftViewMode = .always
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func keyboardShow(info: NSNotification) {
        
        UIView.animate(withDuration: 0, delay:info.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval, options: .layoutSubviews, animations: {
            self.logoImageView.alpha = 0
            self.phoneTextField.transform = CGAffineTransform.init(translationX: 0, y: -112)
            self.phoneLine.transform = CGAffineTransform.init(translationX: 0, y: -112)
            self.codeTextField.transform = CGAffineTransform.init(translationX: 0, y: -112)
            self.codeLine.transform = CGAffineTransform.init(translationX: 0, y: -112)
            self.loginItem.transform = CGAffineTransform.init(translationX: 0, y: -216)
        }, completion: nil)
        
        if self.phoneTextField.isEditing {
            self.phoneLine.backgroundColor = UIColor.HSBlueColor()
            self.codeLine.backgroundColor = UIColor.HSHalfWhiteColor()
        }else{
            self.codeLine.backgroundColor = UIColor.HSBlueColor()
            self.phoneLine.backgroundColor = UIColor.HSHalfWhiteColor()
        }
    }
    
    func keyboardHide(info: NSNotification) {
        
        UIView.animate(withDuration: 0, delay: info.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval, options: .layoutSubviews, animations: {
            self.logoImageView.alpha = 1
            self.phoneTextField.transform = CGAffineTransform.identity
            self.phoneLine.transform = CGAffineTransform.identity
            self.codeTextField.transform = CGAffineTransform.identity
            self.codeLine.transform = CGAffineTransform.identity
            self.loginItem.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        phoneTextField.resignFirstResponder()
        codeTextField.resignFirstResponder()
        self.phoneLine.backgroundColor = UIColor.HSHalfWhiteColor()
        self.codeLine.backgroundColor = UIColor.HSHalfWhiteColor()
    }

    
    @IBAction func login(_ sender: UIButton) {
        self.performSegue(withIdentifier: "loginsuc", sender: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
