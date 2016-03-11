//
//  ViewController.swift
//  pieGraph
//
//  Created by Mac on 10/03/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var carTimer:NSTimer?
    var homeTimer:NSTimer?
    var travelTimer:NSTimer?

    @IBOutlet weak var pieView: PG_PieView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }
    
    override func viewDidAppear(animated: Bool){
        super.viewDidAppear(animated)
        
        
      carTimer =  NSTimer.scheduledTimerWithTimeInterval(0.05, target:self, selector:"updateCar", userInfo:nil, repeats:true)
        
      homeTimer =  NSTimer.scheduledTimerWithTimeInterval(0.12, target:self, selector:"updateHome", userInfo:nil, repeats:true)

        travelTimer =  NSTimer.scheduledTimerWithTimeInterval(0.1, target:self, selector:"updateTravel", userInfo:nil, repeats:true)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func updateCar()
    {
        if pieView?.carPercent <= 100
        {
            pieView?.carPercent = pieView.carPercent + 5.0
            pieView?.setNeedsDisplay()
        }else
        {
            carTimer?.invalidate()
            carTimer = nil
        }
    }
    
    func updateHome()
    {
        if pieView?.homePercent <= 100
        {
            pieView?.homePercent = pieView.homePercent + 5.0
            pieView?.setNeedsDisplay()
        }else
        {
            homeTimer?.invalidate()
            homeTimer = nil
        }
    }
    
    func updateTravel()
    {
        if pieView?.travelPercent <= 100
        {
            pieView?.travelPercent = pieView.travelPercent + 5.0
            pieView?.setNeedsDisplay()
        }else
        {
            travelTimer?.invalidate()
            travelTimer = nil
        }
    }
}

