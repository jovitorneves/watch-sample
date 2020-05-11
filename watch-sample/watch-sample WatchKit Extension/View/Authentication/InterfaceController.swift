//
//  InterfaceController.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 16/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import WatchKit

class InterfaceController: WKInterfaceController {
    
    //MARK: - Outlet
    @IBOutlet weak var displayPasswordLabel: WKInterfaceLabel!
    @IBOutlet weak var confirmarButton: WKInterfaceButton!
    
    //MARK: - Properties
    private var viewModel: AuthenticationViewModel!
    
    //MARK: - Life Cycle
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        //router
        //WKExtension.shared().rootInterfaceController
        
        self.viewModel = AuthenticationViewModel(view: self)
        // Configure interface objects here.
        setBindable()
    }
    
    //MARK: - Setup
    func setBindable(){
        viewModel.feedbackPasswordLabel.bind { (feedbackPassword) in
            self.displayPasswordLabel.setText(feedbackPassword)
        }
        
        viewModel.isButtonEnabled.bind { (isButtonEnabled) in
            self.confirmarButton.setEnabled(isButtonEnabled)
        }
    }
    
    func statusLabel(){
        self.presentTextInputController(withSuggestions: nil, allowedInputMode: .allowEmoji) { (result) in
            guard let result = result else { return }
            OperationQueue.main.addOperation {
                self.dismissTextInputController()
                self.displayPasswordLabel.setText(result[0] as? String)
            }
        }
    }
    
    //MARK: - Actions
    @IBAction func key1() {
        viewModel.checkPassword(keyNumber: "1")
    }
    
    @IBAction func key2() {
        viewModel.checkPassword(keyNumber: "2")
    }
    
    @IBAction func key3() {
        viewModel.checkPassword(keyNumber: "3")
    }
    
    @IBAction func key4() {
        viewModel.checkPassword(keyNumber: "4")
    }
    
    @IBAction func key5() {
        viewModel.checkPassword(keyNumber: "5")
    }
    
    @IBAction func key6() {
        viewModel.checkPassword(keyNumber: "6")
    }
    
    @IBAction func key7() {
        viewModel.checkPassword(keyNumber: "7")
    }
    
    @IBAction func key8() {
        viewModel.checkPassword(keyNumber: "8")
    }
    
    @IBAction func key9() {
        viewModel.checkPassword(keyNumber: "9")
    }
    
    @IBAction func key0() {
        viewModel.checkPassword(keyNumber: "0")
    }
    
    @IBAction func keyDelete() {
        viewModel.checkPassword(keyNumber: "", true)
    }
    
    @IBAction func okAction() {
        viewModel.checkPassword(keyNumber: "", false, true)
    }
    
}
