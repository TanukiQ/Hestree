//
//  HSWriteViewController.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

class HSWriteViewController: HSBaseViewController,UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textInputView: UIView!
    @IBOutlet weak var libraryPhotoItem: UIButton!
    @IBOutlet weak var cameraItem: UIButton!
    @IBOutlet weak var bottomLine: UIView!
    
    var selectedItem: UIButton! = nil
    let placeholderMsg: String = "请输入内容"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.textView.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        self.changePhoto(self.libraryPhotoItem)
    }
    
    func keyboardShow(info: NSNotification) {
        
        let keyFrame = info.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue
        
        UIView.animate(withDuration: info.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval, delay:0, options: .layoutSubviews, animations: {
            self.textInputView.transform = CGAffineTransform.init(translationX: 0, y: -keyFrame.cgRectValue.size.height)
        }, completion: nil)
    }
    
    func keyboardHide(info: NSNotification) {
        
        UIView.animate(withDuration: info.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval, delay: 0, options: .layoutSubviews, animations: {
            self.textInputView.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == placeholderMsg {
            textView.text = ""
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = placeholderMsg
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = placeholderMsg
        }
    }

    @IBAction func showPhoto(_ sender: UIButton) {
        
    }
    
    @IBAction func endEdit(_ sender: UIButton) {
        self.textView.endEditing(true)
    }
    
    
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextGo(_ sender: UIButton) {
    }
    
    @IBAction func changePhoto(_ sender: UIButton) {
        if (self.selectedItem != nil) {
            self.selectedItem.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFontWeightRegular)
            self.selectedItem.isSelected = false
        }
        
        sender.isSelected = true
        sender.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFontWeightMedium)
        self.selectedItem = sender
        
        UIView.animate(withDuration: 0.25, animations: {
            self.bottomLine.transform = self.libraryPhotoItem.isSelected ? CGAffineTransform.identity:CGAffineTransform.init(translationX: 187.5, y: 0)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
