//
//  AuthenticationViewModel.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 20/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import WatchKit

class AuthenticationViewModel{
    
    //MARK: - Properties
    var feedbackPasswordLabel = Bindable<String>("")
    var isButtonEnabled = Bindable<Bool>(false)
    
    private var password: String = ""
    private var passwordText: String = ""
    private var entity = AuthenticationEntity()
    private var view: InterfaceController!
    
    //MARK: Life Cycle
    init(view: WKInterfaceController) {
        self.view = view as? InterfaceController
    }
    
    //MARK: - Verification
    func checkPassword(keyNumber :String, _ isDelete: Bool = false, _ okButton :Bool = false){
        
        if isDelete && password.count > 0 {
            password.removeLast()
            passwordText.removeLast()
            
            if password.count == 0 {
                feedbackPasswordLabel.value = "○○○○○○○○"
            }
        }
        
        if !isDelete && self.password.count >= 0 && self.password.count < 8 {
            self.password += keyNumber
            self.passwordText += "●"
            feedbackPasswordLabel.value = "\(passwordText)"
        }
        self.isButtonEnabled.value = self.password.count == 8
        
        if password.count != 0 {
            feedbackPasswordLabel.value = "\(passwordText)"
        }
        
        if okButton && password.count == 8 {
            if self.checkNumbers(password: password) {
                self.view?.pushController(withName: "TableProductsInterfaceController", context: nil)
            }else{
                self.password.removeAll()
                self.passwordText.removeAll()
                self.feedbackPasswordLabel.value = "○○○○○○○○"
            }
        }
    }
    
    private func checkNumbers(password :String) -> Bool{
        return entity.checkPasswordRequest(password: password)
    }
}
