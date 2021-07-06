//
//  Canvas.swift
//  DrawSomething
//
//  Created by Sophia Wang on 2021/4/19.
//

import UIKit

class Canvas: UIView {
    
    var lineColor = UIColor.white
    var lineWidth: CGFloat = 10
    var path: UIBezierPath!
    var touchPoint:CGPoint!
    var startingPoint:CGPoint!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startingPoint = touches.first?.location(in: self)  //一開始觸碰的點
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchPoint = touches.first?.location(in: self)   //記錄手觸碰得點
        path = UIBezierPath()
        path.move(to: startingPoint)
        path.addLine(to: touchPoint)
        startingPoint = touchPoint
        draw()
    }
    
    func draw(){     //著色路徑
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
    
    func clearCanvas(){
        path.removeAllPoints()
        self.layer.sublayers = nil
        setNeedsDisplay()
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
