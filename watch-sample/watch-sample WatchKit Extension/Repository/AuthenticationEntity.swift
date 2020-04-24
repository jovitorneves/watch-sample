//
//  AuthenticationEntity.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 22/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import Foundation

//Classe responsavel por fazer consultas na API
class AuthenticationEntity {
    
    private var isChecked: Bool!
    
    func checkPasswordRequest(password :String!) -> Bool{
        
        return password != "00000000"
    }
}
