//
//  TermAndConditionViewController.swift
//  mcpttapp
//
//  Created by Niranjan, Rajabhaiya on 20/09/18.
//  Copyright © 2018 Harman connected services. All rights reserved.
//

import UIKit

final class TermAndConditionViewController: UIViewController {
    
    @IBOutlet private weak var descriptionTextView: UITextView!
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var continueButton: UIButton!
    @IBOutlet private weak var checkBoxButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.isEnabled = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

private extension TermAndConditionViewController {
    
    @IBAction func cancelButtonPressed() {
        
    }
    
    @IBAction func continueButtonPressed() {
        CommonUtility.appLaunchFirstTime()
        let loginViewContoller = LoginViewContoller.instantiateFromStoryboard("Login", storyboardId: "LoginViewContoller")
        navigationController?.pushViewController(loginViewContoller, animated: true)
    }
    
    @IBAction func checkboxButtonPressed() {
        if !checkBoxButton.isSelected {
            checkBoxButton.isSelected = true
            continueButton.isEnabled = true
        } else {
            checkBoxButton.isSelected = false
            continueButton.isEnabled = false
        }
        
    }
}
