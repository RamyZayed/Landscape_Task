//
//  ViewController.swift
//  landScape
//
//  Created by Mobile Team on 06/03/2022.
//

import UIKit

class ViewController: UIViewController {
    let tophalf = UIView()
    let middleView = UIView()
    let pic = UIImageView()
    let tx1 = UITextField()
    let tx2 = UITextField()
    
    
    let thirdview = UIView()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImage()
        setupTextfields()
        setupButton()
    }
  
    func setupImage(){
        
        //tophalf.backgroundColor = .red
        view.addSubview(tophalf)
        
        tophalf.translatesAutoresizingMaskIntoConstraints = false
        tophalf.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tophalf.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        tophalf.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        pic.translatesAutoresizingMaskIntoConstraints = false
        tophalf.addSubview(pic)
        pic.image = UIImage(named: "facebooklogo")
        pic.heightAnchor.constraint(equalTo:tophalf.heightAnchor,multiplier: 0.5).isActive = true
        pic.widthAnchor.constraint(equalTo: pic.heightAnchor).isActive = true
//        pic.clipsToBounds = true
//        pic.layer.cornerRadius = 25
        pic.centerXAnchor.constraint(equalTo: tophalf.centerXAnchor).isActive = true
        pic.centerYAnchor.constraint(equalTo: tophalf.centerYAnchor).isActive = true
        
    }

    func setupTextfields(){
        //middleView.backgroundColor = .green
        view.addSubview(middleView)
        
        middleView.translatesAutoresizingMaskIntoConstraints  = false
        
        middleView.topAnchor.constraint(equalTo: tophalf.bottomAnchor).isActive = true
        middleView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        middleView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        middleView.addSubview(tx1)
        middleView.addSubview(tx2)
        
        tx1.translatesAutoresizingMaskIntoConstraints = false
        tx2.translatesAutoresizingMaskIntoConstraints = false
        tx1.placeholder = "Email"
        tx2.placeholder = "Passowrd"
        
        tx1.borderStyle = .roundedRect
        tx2.borderStyle = .roundedRect
        
        tx1.bottomAnchor.constraint(equalTo: tx2.topAnchor,constant: -10).isActive = true
        
        tx1.topAnchor.constraint(equalTo: middleView.topAnchor , constant: 5).isActive = true
        tx2.bottomAnchor.constraint(equalTo: middleView.bottomAnchor , constant: -5).isActive  = true
        
        tx2.heightAnchor.constraint(equalTo: tx1.heightAnchor).isActive = true
        
        tx1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        tx1.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10).isActive = true
        
        tx2.leadingAnchor.constraint(equalTo: tx1.leadingAnchor).isActive = true
        tx2.trailingAnchor.constraint(equalTo: tx1.trailingAnchor).isActive = true
        
        
    }
    
    func setupButton (){
        view.addSubview(thirdview)
        //thirdview.backgroundColor = .systemPink
        thirdview.translatesAutoresizingMaskIntoConstraints = false
       
        thirdview.topAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
        thirdview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive  = true
        thirdview.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    
        
        thirdview.addSubview(button)
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: thirdview.centerXAnchor).isActive = true
        
        //button.topAnchor.constraint(equalTo: thirdview.topAnchor/2).isActive = true
        //button.centerYAnchor.constraint(equalTo: thirdview.centerYAnchor).isActive = true
        
        button.widthAnchor.constraint(equalTo: thirdview.widthAnchor, multiplier: 0.5).isActive = true
    }
    override func viewDidLayoutSubviews() {
        var x : CGFloat = thirdview.frame.size.height/2
        print("------------------xD")
        print(x)
        button.topAnchor.constraint(equalTo: thirdview.topAnchor , constant: x).isActive = true
    }
}

