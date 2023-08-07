//
//  ViewController.swift
//  OneProjectUsingSPM
//
//  Created by Roar Lochar on 26/07/2023.
//

import UIKit
import SwiftUI
import MyUILibrary
import FirstPackage
import SecondPackage
import ThirdPackage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addUI()
        printStuff()
    }
    
    private func printStuff() {
        FirstHelloWorld.sayHello()
        SecondHelloWorld.sayHello()
        ThirdHelloWorld.sayHello()
    }
    
    private func addUI() {
        let hostController = UIHostingController(rootView: UILibraryView(message: "Hello, From \(Self.description())!"))
        hostController.view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(hostController.view)
        
        hostController.view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        hostController.view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}

