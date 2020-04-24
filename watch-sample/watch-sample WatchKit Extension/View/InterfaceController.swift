//
//  InterfaceController.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 16/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    //MARK: Outlet
    @IBOutlet weak var displayPasswordLabel: WKInterfaceLabel!
    @IBOutlet var allButton = [WKInterfaceButton]()
    @IBOutlet var key1Button: WKInterfaceButton!
    @IBOutlet var key2Button: WKInterfaceButton!
    
    private var viewModel = AuthenticationViewModel()
    
    //MARK: Life Cycle
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        setBindable()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setupButton(){
        allButton.append(key1Button)
        allButton.append(key2Button)
        
        for button in allButton{
            print("Description button: " + button.description)
        }
    }
    
    func setBindable(){
        viewModel.feedbackPasswordLabel.bind { (feedbackPassword) in
            print("testando:", feedbackPassword)
            self.displayPasswordLabel.setText(feedbackPassword)
        }
        
//        viewModel.feedbackPasswordLabel?.listener((teste) {
//            })
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
