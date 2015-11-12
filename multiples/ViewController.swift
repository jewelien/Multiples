//
//  ViewController.swift
//  multiples
//
//  Created by Julien Guanzon on 11/11/15.
//  Copyright © 2015 Julien Guanzon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentSum: Int!
    var newSum: Int!
    var multipleSelected: Int!

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multipleTextField: UITextField!
    @IBOutlet weak var multiplesImageView: UIImageView!
    
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var solutionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func playBtnTapped(sender: AnyObject) {
        multipleSelected = Int(multipleTextField.text!)
        if multipleSelected != nil && multipleSelected > 0 {
            playBtn.hidden = true
            multiplesImageView.hidden = true
            multipleTextField.hidden = true
            
            instructionLabel.hidden = false
            addBtn.hidden = false
        } else {
            return
        }
    }
    
    
    @IBAction func addBtnTapped(sender: AnyObject) {
        if !instructionLabel.hidden {
            instructionLabel.hidden = true
            solutionLabel.hidden = false
            currentSum = 0
            solutionLabel.text = updatedSolution()
            currentSum = newSum
        } else {
            solutionLabel.text = updatedSolution()
            currentSum = newSum
        }
    }
    
    func updatedSolution () ->String {
        newSum = currentSum + multipleSelected
        return "\(currentSum) + \(multipleSelected) = \(newSum)"
    }



}

