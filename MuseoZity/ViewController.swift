//
//  ViewController.swift
//  MuseoZity
//
//  Created by Lurita on 30/05/2019.
//  Copyright © 2019 Lurita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let horarioPrado = "Lunes a Sábado de 10:00 a 20:00 , Domingos de 10:00 a 19:00"
    let descripcionPrado = "Una de las mayores pinacotecas de Europa. Su coleccion se debe a los grandes aristócratas aficionados al arte. Pocos se atreverían a poner en duda que es el museo más importante del mundo en pintura europea"
    let museo: Museo
 
    required init?(coder aDecoder: NSCoder) {
        self.museo = Museo(nombre: "museo del Prado", imagen: "museoPrado", horario: horarioPrado  , descripcion: descripcionPrado)
        super.init(coder: aDecoder)
    }
    
    var buttomType: ButtomType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        

    }
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
//               if let setupPlate = segue.destination as? SetupPlateViewController {
//                }
        
    }
    

    
    


    

    @IBAction func btnMadridPressed(_ sender: Any) {
        debugPrint("He clickado en boton Madrid")   
        
    }
}

