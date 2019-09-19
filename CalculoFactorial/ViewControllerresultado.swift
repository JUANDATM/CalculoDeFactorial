//
//  ViewControllerresultado.swift
//  CalculoFactorial
//
//  Created by Daniel Torres Moreno on 9/9/19.
//  Copyright © 2019 Daniel Torres Moreno. All rights reserved.
//

import UIKit

class ViewControllerresultado: UIViewController {
    
    @IBOutlet weak var lblresult: UILabel!
    
    
    var resul : Int = 0
    var a : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        lblresult.text = "El factorial  de \(String(a)) es: \(String(resul)) "

        // Do any additional setup after loading the view.
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
