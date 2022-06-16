//
//  MathEquation.swift
//  Calc
//
//  Created by zani on 14/06/22.
//



import Foundation

struct CalculatorEngine {
    
    // MARK: - Input Controller
    
    private var inputController = MathInputController()
    
    // MARK: - Equation History
    
    private var historyLog: [MathEquation] = []
    
    // MARK: - LCD Display
    
    var lcdDisplayText: String {
        return inputController.lcdDisplayText
    }
    
    // MARK: - Extra Functions
    
    mutating func clearPressed() {
        inputController = MathInputController()
    }
    
    mutating func negatePressed() {
        guard inputController.isCompleted == false else { return }
        
        inputController.negatePressed()
    }
    
    mutating func percentagePressed() {
        guard inputController.isCompleted == false else { return }
        
        inputController.percentagePressed()
    }
    
    // MARK: - Operations
    
    mutating func addPressed() {
        guard inputController.isCompleted == false else { return }
        
        inputController.addPressed()
    }
    
    mutating func minusPressed() {
        guard inputController.isCompleted == false else { return }
        
        inputController.minusPressed()
    }
    
    mutating func multiplyPressed() {
        guard inputController.isCompleted == false else { return }
        
        inputController.multiplyPressed()
    }
    
    mutating func dividePressed() {
        guard inputController.isCompleted == false else { return }
        
        inputController.dividePressed()
    }
    
    mutating func equalsPressed() {
        guard inputController.isCompleted == false else { return }
        
        inputController.execute()
        historyLog.append(inputController.mathEquation)
        printEquationToDebugConsole()
    }
    
    // MARK: - Number Input
    
    mutating func decimalPressed() {
        inputController.decimalPressed()
    }
    
    mutating func numberPressed(_ number: Int) {
        inputController.numberPressed(number)
    }
    
    // MARK: - Debug Console
    
    private func printEquationToDebugConsole() {
        print("Equation: " + inputController.mathEquation.generatePrintout())
    }
    
    // MARK: - History Log
    
    private mutating func clearHistory() {
        historyLog = []
    }
}
