//
//  PG-PieView.swift
//  pieGraph
//
//  Created by Mac on 10/03/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

@IBDesignable class PG_PieView: UIView {

    var carPercent:CGFloat = 1.0
    var homePercent:CGFloat = 1.0
    var travelPercent:CGFloat = 1.0

    var carStartAngel:CGFloat?
    var carEndAngle:CGFloat?
    
    let NoOfGlasses = 8
    let π:CGFloat = CGFloat(M_PI)
    
    let startAngle1:Double = M_PI * 3.5
    let endAngle1:Double = M_PI * 1.5
    
    
    @IBInspectable var counter: Int = 5
    @IBInspectable var outlineColor: UIColor = UIColor.blueColor()
    @IBInspectable var counterColor: UIColor = UIColor(red:51.0/255.0, green:50.0/255.0, blue:41.0/255.0, alpha:1.0)

    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//    
//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    var _percent:CGFloat = 100.0
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    
    
    override func drawRect(rect: CGRect) {
        // Drawing cod
        
        self.createCarPlaceHolder()
        self.createHomePlaceHolder()
        self.createTravelPlaceHolder()
        
        let carStartAngel: CGFloat = 3*π/2
        let carEndAngle: CGFloat = π/4
        
        let travelStartAngle: CGFloat = π/2
        let travelEndAngle: CGFloat = 7*π/4
        
        
        let homeStartAngle: CGFloat = 2*π
        let homelEndAngle: CGFloat = π
        

        
        // Car
        let carEndAngelCal = (carStartAngel - carEndAngle) * (carPercent / 100.0) + carStartAngel
        self.drawCarPie(carStartAngel, endAngle:carEndAngelCal, canvasRect:rect)
        
        //Travel
        let travelEndAngeCal = (travelStartAngle - travelEndAngle) * (travelPercent / 100.0) + travelStartAngle
        self.drawTravelPie(travelStartAngle, endAngle:travelEndAngeCal, canvasRect:rect)
        
        
        // Home
        
        let homeEndAngelCal = (homeStartAngle - homelEndAngle) * (homePercent / 100.0) + homeStartAngle
        self.drawHomePie(homeStartAngle, endAngle:homeEndAngelCal, canvasRect:rect)
    }
    
    
    func createCarPlaceHolder()
    {
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        
        let radius: CGFloat = 130
        
        let arcWidth: CGFloat = 15
        
        let startAngle: CGFloat = 0
        let endAngle: CGFloat =  2*π
        
        let path = UIBezierPath(arcCenter: center,
            radius: radius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true)
        
        // 6
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
    }
    
    func createTravelPlaceHolder()
    {
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        
        let radius: CGFloat = 80
        
        let arcWidth: CGFloat = 15
        
        
        let startAngle: CGFloat = 0
        let endAngle: CGFloat =  2*π
        
        let path = UIBezierPath(arcCenter: center,
            radius: radius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true)
        
        // 6
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
    }
    
    
    func createHomePlaceHolder()
    {
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        
        let radius: CGFloat = 30
        
        let arcWidth: CGFloat = 15
        
        
        let startAngle: CGFloat = 0
        let endAngle: CGFloat =  2*π
        
        let path = UIBezierPath(arcCenter: center,
            radius: radius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true)
        
        // 6
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
    }
    
    
    func drawCarPie(startAngle:CGFloat , endAngle:CGFloat ,canvasRect:CGRect)
    {
        let carBezierPath3 = UIBezierPath()
        
        carBezierPath3.addArcWithCenter(CGPointMake(canvasRect.size.width / 2, canvasRect.size.height / 2), radius:130 , startAngle:startAngle, endAngle:endAngle,  clockwise:true)
        
        
        // carBezierPath.closePath()
        
        carBezierPath3.lineWidth = 15;
        
        UIColor(red:90.0/255.0, green:178.0/255.0, blue:49.0/255.0, alpha:1.0).setStroke()
        carBezierPath3.stroke()
    }

    
    func drawTravelPie(startAngle:CGFloat , endAngle:CGFloat ,canvasRect:CGRect)
    {
        let carBezierPath = UIBezierPath()
        
        carBezierPath.addArcWithCenter(CGPointMake(canvasRect.size.width / 2, canvasRect.size.height / 2), radius:80 , startAngle:startAngle, endAngle:endAngle ,  clockwise:false)
        
        carBezierPath.lineWidth = 15;
        
        UIColor(red:170.0/255.0, green:208.0/255.0, blue:142.0/255.0, alpha:1.0).setStroke()
        carBezierPath.stroke()
        
        
    }
    
    func drawHomePie(startAngle:CGFloat , endAngle:CGFloat ,canvasRect:CGRect)
    {
        let carBezierPath3 = UIBezierPath()
        
        carBezierPath3.addArcWithCenter(CGPointMake(canvasRect.size.width / 2, canvasRect.size.height / 2), radius:30 , startAngle:startAngle, endAngle:endAngle,  clockwise:true)
        
        carBezierPath3.lineWidth = 15;
        
        UIColor(red:28.0/255.0, green:116.0/255.0, blue:45.0/255.0, alpha:1.0).setStroke()
        carBezierPath3.stroke()
    }

}
