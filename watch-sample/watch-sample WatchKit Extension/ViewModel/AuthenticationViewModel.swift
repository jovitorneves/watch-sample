//
//  AuthenticationViewModel.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 20/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import Foundation

class AuthenticationViewModel{
    
    var feedbackPasswordLabel = Bindable<String>("")
    
    private var password: String = ""
    private var entity = AuthenticationEntity()
    
    func checkPassword(keyNumber :String, _ isDelete: Bool = false, _ okButton :Bool = false){
        
        if isDelete && password.count > 0 {
            password.removeLast()
        }
        
        password += keyNumber
        
        feedbackPasswordLabel.value = "\(password)"
        
        if okButton && password.count == 8 {
            if self.checkNumbers(password: password) {
                
            }else{
                
            }
        }
    }
    
    private func checkNumbers(password :String) -> Bool{
        return entity.checkPasswordRequest(password: password)
    }
}
