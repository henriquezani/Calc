//
//  String+Prefix.swift
//  Calc
//
//  Created by zani on 15/06/22.
//

import Foundation


extension String {
    mutating func addPrefixIfNeeded(_ prefix: String){
        guard hasPrefix(prefix) == false else { return }
        
        self = prefix + self
    }
    
    mutating func removePrefixIfNeeded(_ prefix: String){
        guard hasPrefix(prefix) == true else { return }
        
        self = replacingOccurrences(of: prefix, with: "")
    }
}
