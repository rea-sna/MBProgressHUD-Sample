//
//  ViewController.swift
//  MBProgressHUD-Sample
//
//  Created by Reo Shigeno on 2021/05/30.
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startedButton(_ sender: UIButton) {
        // HUDの表示
        MBProgressHUD.showAdded(to: view, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            // HUDの非表示
            MBProgressHUD.hide(for: self.view, animated: true)
        }
    }
    
    @IBAction func startedTextButton(_ sender: UIButton) {
        // HUDの表示
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        // 表示テキストを追加
        hud.label.text = "Loading..."
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            // HUDの非表示
            MBProgressHUD.hide(for: self.view, animated: true)
        }
    }


}

