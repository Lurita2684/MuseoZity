//
//  BottomSelectorViewController.swift
//  MuseoZity
//
//  Created by Lurita on 30/05/2019.
//  Copyright © 2019 Lurita. All rights reserved.
//

import UIKit

class BottomSelectorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let viewController = segue.destination as? ViewController,
            let segueId = segue.identifier {
            
            
            switch segueId {
            case "segueMadrid": break
            
                
            case "segueBarcelona": break
            
            default:
                debugPrint("Error esto no se puede dar")
        }
        
        
    }
    

 }
    
}
