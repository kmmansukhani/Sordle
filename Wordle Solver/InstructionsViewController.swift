//
//  InstructionsViewController.swift
//  Wordle Solver
//
//  Created by vikingonfire on 3/19/22.
//

import UIKit

class InstructionsViewController: UIViewController {

    @IBOutlet weak var insTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(UIScreen.main.nativeBounds.height)
        if UIScreen.main.nativeBounds.height <= 1334 {
            insTextView.font = UIFont(name: insTextView.font!.fontName,size: 14.5)
        }
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
