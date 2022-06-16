//
//  CalcViewController.swift
//  Calc
//
//  Created by zani on 14/06/22.
//

import UIKit



class CalcViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var lcdDisplay: UIView!
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var pinpadButton0: UIButton!
    @IBOutlet weak var pinpadButton1: UIButton!
    @IBOutlet weak var pinpadButton2: UIButton!
    @IBOutlet weak var pinpadButton3: UIButton!
    @IBOutlet weak var pinpadButton4: UIButton!
    @IBOutlet weak var pinpadButton5: UIButton!
    @IBOutlet weak var pinpadButton6: UIButton!
    @IBOutlet weak var pinpadButton7: UIButton!
    @IBOutlet weak var pinpadButton8: UIButton!
    @IBOutlet weak var pinpadButton9: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var negateButton: UIButton!
    @IBOutlet weak var percentageButton: UIButton!
    
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var decimalButton: UIButton!
    
    // MARK: - Color Themes
    private var currentTheme: CalculatorTheme{
        return purpleTheme
    }
    
    
    
    // MARK: - Calculator Engine
    private var calculatorEngine = CalculatorEngine()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        decorateView()
    }
    
    // MARK: - Decorate
    
    private func decorateView(){
       
        
        view.backgroundColor = UIColor(hex: currentTheme.backgroundColor)
        lcdDisplay.backgroundColor = .clear
        displayLabel.textColor = UIColor(hex: currentTheme.displayColor)
        
        
        decorateButton()
    }
    
    private func decorateButton(){
        decoratePinpadButton(pinpadButton0, true)
        decoratePinpadButton(pinpadButton1)
        decoratePinpadButton(pinpadButton2)
        decoratePinpadButton(pinpadButton3)
        decoratePinpadButton(pinpadButton4)
        decoratePinpadButton(pinpadButton5)
        decoratePinpadButton(pinpadButton6)
        decoratePinpadButton(pinpadButton7)
        decoratePinpadButton(pinpadButton8)
        decoratePinpadButton(pinpadButton9)
        
        decorateExtraFunctionButton(clearButton)
        decorateExtraFunctionButton(negateButton)
        decorateExtraFunctionButton(percentageButton)
        
        decorateOperaitonButton(equalsButton)
        decorateOperaitonButton(divideButton)
        decorateOperaitonButton(multiplyButton)
        decorateOperaitonButton(addButton)
        decorateOperaitonButton(minusButton)
        
        decoratePinpadButton(decimalButton)
    }
    
    private func decorateButton(_ button: UIButton, _ usingSlicedImage: Bool = false){
        button.setBackgroundImage(usingSlicedImage ? UIImage(named: "CircleSliced") : UIImage(named: "Circle"), for: .normal)
        button.tintColor = .orange
        button.backgroundColor = .clear
    }
    
    private func decorateExtraFunctionButton(_ button: UIButton){
        decorateButton(button)
        
       
        
        button.tintColor = UIColor(hex:currentTheme.extraFunctionColor)
        button.setTitleColor(UIColor(hex:currentTheme.extraFunctionTitleColor), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    }
    
    private func decorateOperaitonButton(_ button: UIButton){
        decorateButton(button)
        
                
        button.tintColor = UIColor(hex:currentTheme.operationColor)
        button.setTitleColor(UIColor(hex:currentTheme.operationTitleColor), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    }
    private func decoratePinpadButton(_ button: UIButton, _ usingSlicedImage: Bool = false){
        decorateButton(button, usingSlicedImage)
        
       
        
        button.tintColor = UIColor(hex:currentTheme.pinpadColor)
        button.setTitleColor(UIColor(hex:currentTheme.pinpadTitleColor), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    }


    
    // MARK: - IBActions
    
    @IBAction private func clearPressed() {
        calculatorEngine.clearPressed()
        refreshLCDDisplay()
    }
    
    @IBAction private func negatePressed() {
        calculatorEngine.negatePressed()
        refreshLCDDisplay()
    }
    
    @IBAction private func percentagePressed() {
        calculatorEngine.percentagePressed()
        refreshLCDDisplay()
    }
    
    // MARK: - Operations
    
    @IBAction private func addPressed() {
        calculatorEngine.addPressed()
        refreshLCDDisplay()
    }
    
    @IBAction private func minusPressed() {
        calculatorEngine.minusPressed()
        refreshLCDDisplay()
    }
    
    @IBAction private func multiplyPressed() {
        calculatorEngine.multiplyPressed()
        refreshLCDDisplay()
    }
    
    @IBAction private func dividePressed() {
        calculatorEngine.dividePressed()
        refreshLCDDisplay()
    }
    
    @IBAction private func equalsPressed() {
        calculatorEngine.equalsPressed()
        refreshLCDDisplay()
    }
    
    // MARK: - Number Input
    
    @IBAction private func decimalPressed() {
        calculatorEngine.decimalPressed()
        refreshLCDDisplay()
    }
    
    @IBAction private func numberPressed(_ sender: UIButton) {
        let number = sender.tag
        calculatorEngine.numberPressed(number)
        refreshLCDDisplay()
    }
    
    
    // MARK: - Refresh LCDDisplay
    
    private func refreshLCDDisplay(){
        displayLabel.text = calculatorEngine.lcdDisplayText
    }
}



