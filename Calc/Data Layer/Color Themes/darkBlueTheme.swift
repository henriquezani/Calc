//
//  MathEquation.swift
//  Calc
//
//  Created by zani on 16/06/22.
//

import Foundation


extension ThemeManager {
    
    var darkBlueTheme: CalculatorTheme {
        return CalculatorTheme(id:          "6",
            backgroundColor:                "#1D1D1D",
            displayColor:                   "#727272",
                               
            extraFunctionColor:             "#323232",
            extraFunctionTitleColor:        "#FFFFFF",
                               
            operationColor:                 "#4566B6",
            operationTitleColor:            "#FFFFFF",
            operationSelectedColor:         "#4566B6",
            operationTitleSelectedColor:    "#FFFFFF",
                               
            pinpadColor:                    "#1D1D1D",
            pinpadTitleColor:               "#767676",
                               
            statusBarStyle:                 .light)
    }
}
