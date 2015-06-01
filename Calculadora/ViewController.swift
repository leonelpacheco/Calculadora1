//
//  ViewController.swift
//  Calculadora
//
//  Created by Leonel Pacehco on 5/31/15.
//  Copyright (c) 2015 Leonel Pacheco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Screen: UILabel!
    var numero1 = Int()
    var numero2 = Int()
    var esNumero = false
    var resultado = Int()
    var operacion = ""
    
    @IBAction func Funcion(sender: AnyObject) {
        esNumero = false
        numero1 = Screen.text!.toInt()!
        operacion = sender.currentTitle!!
    }
    
    @IBAction func numero(sender: AnyObject) {
        var numero = sender.currentTitle
        if (esNumero == true) {
            self.Screen.text = self.Screen.text! + numero!!
        }
        else {
                self.Screen.text = numero!
        }
    esNumero = true
    }
    
    
    @IBAction func Igual(sender: AnyObject) {
        numero2 = Screen.text!.toInt()!
        switch(operacion) {
        case "+":
            resultado = numero1 + numero2
        case "-":
            resultado = numero1 - numero2
        case "X":
            resultado = numero1 * numero2
        case "/":
            resultado = numero1 / numero2
        default:
            resultado = 0
            
        }
        Screen.text = "\(resultado)"
    }
    
    @IBAction func Limpiar(sender: AnyObject) {
        numero1 = 0
        numero2 = 0
        esNumero = false
        resultado = 0
        Screen.text = "\(resultado)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

