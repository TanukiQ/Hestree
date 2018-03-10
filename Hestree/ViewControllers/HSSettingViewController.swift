//
//  HSSettingViewController.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

class HSSettingViewController: HSBaseViewController {

    @IBOutlet weak var pushLabel: UILabel!
    @IBOutlet weak var pushSwitch: UISwitch!
    
    let menuDuration: TimeInterval = 0.4
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pushSwitch.isOn = UserDefaults.standard.bool(forKey: "SwitchPush")
        
        if pushSwitch.isOn {
            self.pushLabel.text = "您可以接收到自己或他人发送的时间胶囊信息"
        }else{
            self.pushLabel.text = "开启通知后您才可以收到时间胶囊的信息"
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Switch(_ sender: UISwitch) {
        if sender.isOn {
            UIView.animate(withDuration: menuDuration, animations: {
                self.pushLabel.alpha = 0.5
            }, completion: { (true) in
                UIView.animate(withDuration: self.menuDuration, animations: {
                    self.pushLabel.alpha = 1
                    self.pushLabel.text = "您可以接收到自己或他人发送的时间胶囊信息"
                })
                
            })
            
        }else{
            UIView.animate(withDuration: menuDuration, animations: {
                self.pushLabel.alpha = 0.5
            }, completion: { (true) in
                UIView.animate(withDuration: self.menuDuration, animations: {
                    self.pushLabel.alpha = 1
                    self.pushLabel.text = "开启通知后您才可以收到时间胶囊的信息"
                })
            })
        }
        
        UserDefaults.standard.set(sender.isOn, forKey: "SwitchPush")
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
