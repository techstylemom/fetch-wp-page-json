//
//  AboutViewController.swift
//  Fetch Data
//
//  Created by Irish on 2/20/21.
//

import UIKit

class AboutViewController: UIViewController, PageModelDelegate {
    
    var containerView: UIView = UIView()
    var contentLabel: UILabel = UILabel()
    
    
    var pageModel = PageModel()
    var page = Page()

    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.view.addSubview(containerView)
        containerView.backgroundColor = .white
        pageModel.delegate = self
        pageModel.fetchAboutPage()
        
   
    }
    
    func setupView() {
        containerView.addSubview(contentLabel)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        setupLabel()
        
    }
    
    func setupLabel() {
        
        if self.page != nil {
            contentLabel.text = self.page.content?.rendered
            contentLabel.font = UIFont(name: "AvenirNext-Regular", size: 20)
            contentLabel.textColor = .black
            contentLabel.numberOfLines = 0
            contentLabel.translatesAutoresizingMaskIntoConstraints = false
            
            contentLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
            contentLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 50).isActive = true
            contentLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -50).isActive = true
            contentLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -50).isActive = true
        }
        
        
    }
    
    func fetchPage(page: Page) {
        DispatchQueue.main.async {
            self.page = page
            self.setupView()
        }
    }
    
    
}
