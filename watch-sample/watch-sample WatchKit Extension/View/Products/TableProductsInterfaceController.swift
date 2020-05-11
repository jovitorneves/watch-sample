//
//  TableProductsInterfaceController.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 28/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import WatchKit
import AVFoundation

class TableProductsInterfaceController: WKInterfaceController {
    
    //MARK: - Outlet
    @IBOutlet weak var productsTable: WKInterfaceTable!
    
    //MARK: - Properties
    private var products: [ProductModel] = []
    
    //MARK: - Life Cycle
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.incrementProducts()
        productsTable.setNumberOfRows(self.products.count, withRowType: "ProductRow")
        self.tableViewCell()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //MARK: - Table
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        if (products.indices.contains(rowIndex)){
        }
    }
    
    private func incrementProducts(){
        for number in 0...3 {
            var productIn = ProductModel()
            
            productIn.name = "Invest: \(number)"
            products.append(productIn)
        }
    }
    
    private func tableViewCell(){
        
        for index in 0...self.products.count {
            print("indeci atual: \(index)")
            guard let row = productsTable.rowController(at: index) as? ProductRow else { continue }
            if (products.indices.contains(index)){
                //row.model = products[index]
                row.setCell(model: products[index])
            }
        }
    }

}
