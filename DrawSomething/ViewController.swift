//
//  ViewController.swift
//  DrawSomething
//
//  Created by Sophia Wang on 2021/4/19.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var canvas: Canvas!
    
    @IBAction func clear(_ sender: UIButton) {
        canvas.clearCanvas()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        canvas.clipsToBounds = true         //才不會畫出畫框
        canvas.isMultipleTouchEnabled = false   //不要多點觸碰
    }


}

