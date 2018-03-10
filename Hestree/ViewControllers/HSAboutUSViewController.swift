//
//  HSAboutUSViewController.swift
//  Hestree
//
//  Created by TangXu on 2016/11/28.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

class HSAboutUSViewController: HSBaseViewController {
    
    @IBOutlet weak var helperView: UIVisualEffectView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func showHelper(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {
            self.helperView.alpha = 1
        })
    }
    
    @IBAction func hiddenHelper(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.5, animations: {
            self.helperView.alpha = 0
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
