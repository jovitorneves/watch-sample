//
//  ProductRow.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 04/05/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import Foundation
import WatchKit

class ProductRow: NSObject {
    
    //MARK: - Outlet
    @IBOutlet weak var iconProductImg: WKInterfaceImage!
    @IBOutlet weak var nameProductLabel: WKInterfaceLabel!
    
    //MARK: - Life Cycle
    override init() {
        super.init()
        
    }
    
    //MARK: - Setup
    func setCell(model: ProductModel){
        let image : UIImage = UIImage(named:"clock")!//mudar
        self.iconProductImg?.setImage(image)
        self.nameProductLabel?.setText(model.name ?? "")
    }
}
