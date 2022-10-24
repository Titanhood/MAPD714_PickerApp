//
//
// DatePickerViewController.swift
// PickersApp
// titanhood
// PickersApp
//
// Created by Ajay Shrivastav on 2022-10-22 on 4:32 PM.


import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                let date = NSDate()
                datePicker.setDate(date as Date, animated: false)
    }
    
    @IBAction func onButtonPressed(_ sender: Any) {
        let date = datePicker.date
                let message = "The date and time you selected is \(date)"
                let alert = UIAlertController(
                    title: "Date and Time Selected",
                    message: message,
                    preferredStyle: .alert)
                let action = UIAlertAction(
                    title: "That's so true!",
                    style: .default,
                    handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
