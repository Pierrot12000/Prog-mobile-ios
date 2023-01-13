//
//  ViewControllerEdit.swift
//  Notes
//
//  Created by Pierre on 26/12/2022.
//

import UIKit

class ViewControllerEdit: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let charge=titrein
        {
            titre.text=charge
        }
        if let charge=descin
        {
            desc.text=charge
        }
        if let charge=togglein
        {
            toggle.setOn(charge, animated: true)
        }
        if let charge=datein
        {
            date.setDate(charge, animated: true)
        }
    }
    
    
    @IBOutlet weak var titre: UITextField!
    
    @IBOutlet weak var desc: UITextField!
    
    @IBOutlet weak var toggle: UISwitch!
    
    @IBOutlet weak var date: UIDatePicker!
    
    var titrein: String?
    var descin: String?
    var togglein: Bool?
    var datein: Date?
    var row: Int = 0
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
