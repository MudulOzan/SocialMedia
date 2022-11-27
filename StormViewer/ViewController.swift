//
//  ViewController.swift
//  StormViewer
//
//  Created by Ozan Mudul on 27.11.2022.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        let fm = FileManager.default
        let path =  Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nesl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

