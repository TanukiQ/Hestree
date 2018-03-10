//
//  HSHomeViewController.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

class HSHomeViewController: HSBaseViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var maskView: UIView!
    
    let menuDuration: TimeInterval = 0.4
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if self.maskView.alpha == 1 {
            UIView.beginAnimations(nil, context: nil)
            UIView.setAnimationDuration(menuDuration)
            UIView.setAnimationCurve(.easeOut)
            self.menuView.transform = CGAffineTransform.identity
            self.maskView.alpha = 0
            UIView.commitAnimations()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func showMenu(_ sender: UIButton) {
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(menuDuration)
        UIView.setAnimationCurve(.easeOut)
        self.menuView.transform = CGAffineTransform.init(translationX: 0, y: 435)
        self.maskView.alpha = 1
        UIView.commitAnimations()
        
    }
    
    @IBAction func hiddenMenu(_ sender: UIButton) {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(menuDuration)
        UIView.setAnimationCurve(.easeOut)
        self.menuView.transform = CGAffineTransform.identity
        self.maskView.alpha = 0
        UIView.commitAnimations()
    }
    
    @IBAction func tapHiddenMenu(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: menuDuration, animations: {
            self.menuView.transform = CGAffineTransform.identity
            self.maskView.alpha = 0
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
