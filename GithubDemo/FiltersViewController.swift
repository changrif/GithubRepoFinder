//
//  FiltersViewController.swift
//  GithubDemo
//
//  Created by Chandler Griffin on 3/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class FiltersViewController: UIViewController {
    
    var settings: GithubRepoSearchSettings?
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var minStarSlider: UISlider!
    
    weak var delegate: SettingsDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        minStarSlider.value = Float((settings?.minStars)!)
        starLabel.text = "\((settings?.minStars)!)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let value: Int = Int(minStarSlider.value * 5)
        starLabel.text = "\(value)"
        
        settings?.minStars = value
    }
    
    @IBAction func saveButtonTapped(_ sender: AnyObject) {
        self.delegate?.didSaveSettings(settings: settings!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onCancelButton(_ sender: AnyObject) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
