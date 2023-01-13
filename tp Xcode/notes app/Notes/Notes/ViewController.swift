//
//  ViewController.swift
//  Notes
//
//  Created by Pierre Grimmer on 07/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        let row=indexPath.row
        cell.myLabel.text=taches[row]
        if(done[row]==true)
        {
            cell.tick.isHidden=false
        }
        else
        {
            cell.tick.isHidden=true
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete)
        {
            let row=indexPath.row
            taches.remove(at: row)
            done.remove(at: row)
            desc.remove(at: row)
            dates.remove(at: row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    var taches:[String]=["Acheter un cadi", "Acheter du lait"]
    var  done:[Bool]=[false, false]
    var desc: [String]=["un cadi qui roule bien", "100% bio 100% naturel sans gluten"]
    var dates: [Date]=[Date(), Date(timeIntervalSinceReferenceDate: 30)]
    
    //done=done.sorted(by: {s1, s2 in s1.prix<s2.prix})
    //done.filter({$0.prix<=Double(slider.value)})

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.dataSource=self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc=segue.destination as? ViewControllerEdit
        {
            let row=myTableView.indexPathForSelectedRow!.row
            vc.titrein=taches[row]
            vc.descin=desc[row]
            vc.togglein=done[row]
            vc.datein=dates[row]
            vc.row=row
            myTableView.deselectRow(at: myTableView.indexPathForSelectedRow!, animated: true)
        }
    }
    
    @IBAction func unwindToMainEdit(_ unwindSegue: UIStoryboardSegue)
    {
        let sourceViewController = unwindSegue.source as! ViewControllerEdit
        
        let textInput = sourceViewController.titre.text!
        let descInput = sourceViewController.desc.text!
        let toggleInput = sourceViewController.toggle.isOn
        let dateInput = sourceViewController.date.date
        let row=sourceViewController.row
        
        taches[row]=textInput
        desc[row]=descInput
        done[row]=toggleInput
        dates[row]=dateInput
        
        myTableView.reloadData()
    }
    
    @IBAction func unwindToMainVC(_ unwindSegue: UIStoryboardSegue) {
        
        
        let sourceViewController = unwindSegue.source as! ViewControllerAdd
        // Use data from the view controller which initiated the unwind segue
        
        if !sourceViewController.textInput.text!.isEmpty
        {
            let textInput = sourceViewController.textInput.text!
            let descInput = sourceViewController.descInput.text!
            let dateInput = sourceViewController.dateInput.date
            taches.append(textInput)
            done.append(false)
            dates.append(dateInput)
            if descInput.isEmpty
            {
                desc.append("")
            }
            else
            {
                desc.append(descInput)
            }
            myTableView.reloadData()
        }
    }

}

