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
    
    //MARK: - Properties
    private var isChecked: Bool!
    
    //MARK: Verification
    func checkPasswordRequest(password :String!) -> Bool{
        
        return password != "00000000"
    }
}
