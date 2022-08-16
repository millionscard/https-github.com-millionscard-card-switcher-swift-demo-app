//
//  ViewController.swift
//  AccountUpdaterDemo
//
//  Created by TARIK AIT MBAREK on 14/8/2022.
//

import UIKit
import PasswordChangerSDK


class ViewController: UIViewController {
    var session: PasswordChangerSession!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func openAccountUpdater() {
        let session = PasswordChangerSession()
        session.createSession(completionHandler: { (sessionId) in
            DispatchQueue.main.async {
                self.openUpdater(session_id: sessionId)
            }
        })
    }
    
    func openUpdater(session_id: String = "") {
            let vc = PasswordChangerViewController(sessionId: session_id)
            present(vc, animated: true, completion: nil)
        }
}

