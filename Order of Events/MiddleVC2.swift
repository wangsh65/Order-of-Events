//
//  MiddleVC2.swift
//  Order of Events
//
//  Created by Shelly on 6/3/24.
//

import UIKit

class MiddleVC2: UIViewController {



    @IBOutlet weak var MiddleViewController: UILabel!
    
    var eventNumber: Int =  1
    
    func addEvent(from: String) {
        if let existingText = MiddleViewController.text {
            MiddleViewController.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

    }
    
    override func viewWillAppear( _ animated : Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated : Bool){
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    override func viewWillDisappear( _ animated : Bool){
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    override func viewDidDisappear( _ animated : Bool){
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappearr")
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

