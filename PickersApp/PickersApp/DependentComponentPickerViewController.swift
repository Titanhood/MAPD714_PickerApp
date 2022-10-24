//
//
// DependentComponentPickerViewController.swift
// PickersApp
// titanhood
// PickersApp
//
// Created by Ajay Shrivastav on 2022-10-22 on 4:33 PM.


import UIKit

class DependentComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    private let stateComponent = 0
    private let zipComponent = 1
    private var stateZips:[String : [String]]!
    private var states:[String]!
    private var zips:[String]!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == stateComponent {
                  return states.count
              } else {
                  return zips.count
              }
        
    }
    
    @IBAction func onButtonPressed(_ sender: Any) {
        
      
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
              let bundle = Bundle.main
              let plistURL = bundle.url(forResource:"statedictionary",
                                                   withExtension: "plist")
              stateZips = NSDictionary.init(contentsOf: (plistURL)!) as? [String : [String]]
              let allStates = stateZips.keys
              states = allStates.sorted()
              let selectedState = states[0]
              zips = stateZips[selectedState]
            
            // Do any additional setup after loading the view.
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
             
               }
            
            func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
                    let pickerWidth = pickerView.bounds.size.width
                    if component == zipComponent {
                        return pickerWidth/3
                    } else {
                        return 2 * pickerWidth/3
                    }
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
