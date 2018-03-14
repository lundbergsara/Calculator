
import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func tap(_ sender: UIButton) {
        self.displayLabel!.text = sender.titleLabel?.text!
    }
}


