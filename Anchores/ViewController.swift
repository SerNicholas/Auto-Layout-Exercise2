//
//  ViewController.swift
//  Anchores
//
//  Created by Nikola on 8/15/19.
//  Copyright © 2019 Nikola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let lePiafImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "lePiaf"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our stores soon!", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        
        textView.attributedText = attributedText
        
        //        textView.text = "Join us today in our fun and games"
        //        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        view.addSubview(lePiafImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
        
    }
    
    
    private func setupLayout() {
        
        let topImageContainerView = UIView()
        //        topImageContainerView.backgroundColor = .orange
        view.addSubview(topImageContainerView)
        //        topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.addSubview(lePiafImageView)
        
        //        topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        //        topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        
        lePiafImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        lePiafImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        lePiafImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 1/2).isActive = true
        lePiafImageView.widthAnchor.constraint(equalTo: topImageContainerView.widthAnchor).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
}

