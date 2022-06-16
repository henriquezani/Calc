//
//  CalcViewController.swift
//  Calc
//
//  Created by zani on 16/06/22.
//

import Foundation


extension CalcViewController {
    
    var lightBlueTheme: CalculatorTheme {
        return CalculatorTheme(
            backgroundColor:                "#F8F8F8",
            displayColor:                   "#000000",
                               
            extraFunctionColor:             "#D6DEE5",
            extraFunctionTitleColor:        "#00B4FF",
                               
            operationColor:                 "#00B4FF",
            operationTitleColor:            "#FFFFFF",
                               
            pinpadColor:                    "#EEEEEE",
            pinpadTitleColor:               "#000000")
    }
}
