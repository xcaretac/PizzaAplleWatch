//
//  InterfaceController.swift
//  CreaTuPizzaAW WatchKit Extension
//
//  Created by Xcaret A Ceniceros on 23/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tamaño: WKInterfaceLabel!
    @IBOutlet var botonSiguiente: WKInterfaceButton!
        var tamañoPizza:String=""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonSiguiente.setEnabled(false)
        
        // Configure interface objects here.
    }

    @IBAction func elegirTamaño() {
        let tamañoContexto=Valores(t: tamañoPizza, m: "", q: "", i: "")
        pushControllerWithName("IdentificadorTamaño", context: tamañoContexto)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func valorTamaño(value: Float) {

        switch value{
        case 1:
            tamañoPizza="Pizza Pequeña"
            tamaño.setText(tamañoPizza)
            botonSiguiente.setEnabled(true)
        case 2:
            tamañoPizza="Pizza Mediana"
            tamaño.setText(tamañoPizza)
        case 3:
            tamañoPizza="Pizza Grande"
            tamaño.setText(tamañoPizza)
        default:
            tamañoPizza="Elige Tamaño"
            tamaño.setText(tamañoPizza)
            botonSiguiente.setEnabled(false)
        }
    }
}
