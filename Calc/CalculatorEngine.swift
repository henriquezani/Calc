//
//  CalculatorEngine.swift
//  Calc
//
//  Created by zani on 14/06/22.

// → What's This File?
//   It's the core of the calculator. The brain. It generates all of our behaviour.
//   Architecural Layer: Business Logic Layer



import Foundation

struct CalculatorEngine {
    
    enum OperandSide{
        case leftHandSide
        case rightHandSide
    }
    
    // MARK: - Math Equation
    private var mathEquation = MathEquation(lhs: .zero)
    private var operandSide = OperandSide.leftHandSide
    
    // MARK: - LCDDisplay
    var lcdDisplayText = ""
    
    
    // MARK: - Extra Functions
    
    mutating func clearPressed() {
        
    }
    
    mutating func negatePressed() {
        
    }
    
    mutating func percentagePressed() {
        
    }
    
    // MARK: - Operations
    
    mutating func addPressed() {
        mathEquation.operation = .add
        operandSide = .rightHandSide
    }
    
    mutating func minusPressed() {
        mathEquation.operation = .subtract
        operandSide = .rightHandSide
    }
    
    mutating func multiplyPressed() {
        mathEquation.operation = .multiply
        operandSide = .rightHandSide
    }
    
    mutating func dividePressed() {
        mathEquation.operation = .divide
        operandSide = .rightHandSide
    }
    
    mutating func equalsPressed() {
        mathEquation.execute()
        lcdDisplayText = mathEquation.result?.formatted() ?? "Error"
    }
    
    // MARK: - Number Input
    
    mutating func decimalPressed() {
        
    }
    
    mutating func numberPressed(_ number: Int) {
        
        let decimalValue = Decimal(number)
        lcdDisplayText = decimalValue.formatted()
        
        switch operandSide {
        case .leftHandSide:
            mathEquation.lhs = decimalValue
        case .rightHandSide:
            mathEquation.rhs = decimalValue
        }
        
        
    }
}
