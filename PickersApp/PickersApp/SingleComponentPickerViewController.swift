//
//
// SingleComponentPickerViewController.swift
// PickersApp
// titanhood
// PickersApp
//
// Created by Ajay Shrivastav on 2022-10-22 on 4:32 PM.


import UIKit

class SingleComponentPickerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)!"
        
        let alert = UIAlertController(
            title: title,
            message: "Thank you for choosing",
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "You're welcome",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var singlePicker: UIPickerView!
    private let characterNames = [
        "Luke", "Leia", "Han", "Chewbacca", "Artoo",
        "Threepio", "Lando"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
        
        
        
        
        /*
         @IBAction func onButtonPressed(_ sender: Any) {
         }
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
