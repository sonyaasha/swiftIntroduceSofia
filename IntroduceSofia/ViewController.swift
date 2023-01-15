//
//  ViewController.swift
//  IntroduceSofia
//
//  Created by Sofia Toropova on 1/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var currentColor:UIColor = UIColor.white

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var numberOfPets: UILabel!
    
    @IBOutlet weak var careerTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!

    @IBOutlet weak var changeColorButton: UIButton!
    
    @IBAction func changeColorButtonPressed(sender: UIButton){
        if(currentColor == UIColor.white){
                    self.view.backgroundColor = UIColor.yellow
                    currentColor = UIColor.yellow
                }else{
                    self.view.backgroundColor = UIColor.white
                    currentColor = UIColor.white
                }
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPets.text = "\(Int(sender.value))"
      }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            // Let's us chose the title we have selected from the segmented control
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
            // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
            // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(String(describing: firstName.text!)) \(String(describing:lastNameTextField.text!)). I am a \(year!)-year student at Wentworth Institute of Technology. I recently got \(String(describing: numberOfPets.text!)) dog, named Phoebe after the Friends Phoebe. It is \(morePetsSwitch.isOn) that I want more pets. I like to \(String(describing: hobbyTextField.text!)) to learn about opinions of authors of the past and present. In the future I want go into \(String(describing: careerTextField.text!)) research to attempt to answer the unanswerable questions!"
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = currentColor
        // Do any additional setup after loading the view.
    }


}

