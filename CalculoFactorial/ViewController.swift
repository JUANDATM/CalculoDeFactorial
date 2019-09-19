//
//  ViewController.swift
//  CalculoFactorial
//
//  Created by Daniel Torres Moreno on 9/9/19.
//  Copyright © 2019 Daniel Torres Moreno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numero : Int = 0
    var resul : Int = 0
    var fact : Int = 1
    var a : Int = 0
    
    @IBOutlet weak var lblCalculo: UILabel!
    
    @IBOutlet weak var txtNumero: UITextField!
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        numero = Int(txtNumero.text!)!
        a = Int(txtNumero.text!)!
    
        if (txtNumero.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Ingrese el numero")
        }else {
            
            for n in 1...numero {
                fact = fact * n
            }
            resul = fact
            self.performSegue(withIdentifier: "segueresultado", sender: self)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showAlerta(titulo: String, mensaje: String){
        //Crea La Alerta
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        //Agregar Un Boton
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        //Muestra El Alerta
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueresultado"){
            let segueresul = segue.destination as! ViewControllerresultado
            segueresul.resul = resul
            segueresul.a = a
    }


}
}

