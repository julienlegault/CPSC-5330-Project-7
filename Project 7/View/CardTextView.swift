//
//  CardTextView.swift
//  Project 7
//
//  Created by Julien on 2/15/24.
//

import UIKit

class CardTextView: UIViewController {

    @IBOutlet weak var cardTextLabel: UILabel!
    var cardText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardTextLabel.text = cardText
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
