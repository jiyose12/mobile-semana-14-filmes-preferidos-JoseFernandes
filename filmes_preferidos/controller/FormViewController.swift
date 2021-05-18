//
//  FormViewController.swift
//  filmes_preferidos
//
//  Created by IFPB on 15/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    
    @IBOutlet weak var slRating: UISlider!
    @IBOutlet weak var lbRating: UILabel!
    
    @IBOutlet weak var swOscar: UISwitch!
    
    @IBOutlet weak var stTimesWatched: UIStepper!
    @IBOutlet weak var lbTimesWatched: UILabel!
    
    var register: Register!
    
    @IBAction func actionSliderRating(_ sender: Any) {
        self.lbRating.text = String(Int(slRating.value))
    }
    
    @IBAction func actionStepperWatched(_ sender: Any) {
        self.lbTimesWatched.text = String(Int(stTimesWatched.value))
    }
    
    @IBAction func save(_ sender: Any) {
        let name = self.tfName.text!
        let movieRating = Int(self.lbRating.text!)
        let oscar = self.swOscar.isOn
        let timesWatched = Int(self.lbTimesWatched.text!)
        
        let movie = Movie(name: name, movieRating: movieRating!, oscar: oscar, timesWatched: timesWatched!)
        
        self.register = (UIApplication.shared.delegate as! AppDelegate).register
        self.register.add(movie: movie)
        
        self.navigationController?.popViewController(animated: true)
    }
}
