//
//  ViewController.swift
//  DigerSayfayaGecme
//
//  Created by Özgür Salih Dülger on 22.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var sevilenInsan = ""

    @IBOutlet weak var yazilanInsan: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func eminMisinButonu(_ sender: Any) {
        
        sevilenInsan = yazilanInsan.text!
        performSegue(withIdentifier: "kaydet", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "kaydet" {
            let destinitaionSayfa = segue.destination as! ViewControllerI_ki
            destinitaionSayfa.cıkanIsimm = "EN SEVDİĞİM İNSAN: \(sevilenInsan)"
        }
    }
    
}

