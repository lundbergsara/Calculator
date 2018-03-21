
import UIKit

class CalculatorViewController: UIViewController {

    enum Operation {
        case noop, add, subtract, multiply, divide, equal
    }
    
    
    var operation: Operation = .noop
    var accmulator = 0
    var reset = false

    
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func tap(_ sender: UIButton) {
        let symbol = sender.titleLabel!.text!
        var currentDisplay = self.displayLabel.text!
        
        
        
        if let digit = Int(symbol) {
        if Int(currentDisplay)! == 0 || reset {
            currentDisplay = ""
        }
        currentDisplay = currentDisplay + String(digit)
          self.displayLabel.text = currentDisplay
          reset = false
        } else if symbol == "C" {
            self.displayLabel.text = "0"
            accmulator = 0
            operation = .noop
        } else {
            switch (operation){
            case .add:
                accmulator = accmulator + Int(displayLabel.text!)!
            case .subtract:
                accmulator = accmulator - Int(displayLabel.text!)!
            case .multiply:
                accmulator = accmulator * Int(displayLabel.text!)!
            case .divide:
                accmulator = accmulator / Int(displayLabel.text!)!
            default:
                accmulator = Int(displayLabel.text!)!
            }
            
        if symbol == "+" {
            operation = .add
        } else if symbol == "-" {
            operation = .subtract
        } else if symbol == "✕" {
            operation = .multiply
        } else if symbol == "%" {
            operation = .divide
        } else if symbol == "=" {
            operation = .equal
            }
            reset = true
        displayLabel.text = String(accmulator)
    }
}

}

