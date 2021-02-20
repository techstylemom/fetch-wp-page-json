//
//  MainViewController.swift
//  Fetch Data
//
//  Created by Irish on 2/20/21.
//

import UIKit

class MainViewController: UIViewController {
    
    var containerView:UIView = UIView()
    var background: UIImageView = UIImageView()
    var aboutButton: UIButton = UIButton()
    var logo: UIImageView = UIImageView()
    var width = CGFloat()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(containerView)
        
        setUpContainerView()
        aboutButton.addTarget(self, action: #selector(aboutPress), for: .touchUpInside)
    
    }
    
    func setUpContainerView() {
        containerView.addSubview(background)
        containerView.addSubview(logo)
        containerView.addSubview(aboutButton)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        setUpBackground()
        setUpLogo()
        setUpAboutButton()
    }
    
    func setUpBackground() {
        background.image = UIImage(named: "bg")
        background.translatesAutoresizingMaskIntoConstraints = false
        background.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        background.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
        background.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
    }
    
    func setUpLogo() {
        
        containerView.addSubview(logo)
        logo.image = UIImage(named: "logo")
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        
        logo.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        
        logo.widthAnchor.constraint(equalToConstant: 206.0).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 57.0).isActive = true
    
    
    }
    
    func setUpAboutButton() {
        aboutButton.setBackgroundImage(UIImage(named: "about"), for: .normal)
        aboutButton.setTitleColor(.black, for: .normal)
        
        aboutButton.translatesAutoresizingMaskIntoConstraints = false
        
        aboutButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        aboutButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -50).isActive = true
    }
    
    @objc func aboutPress() {
        let aboutVC = AboutViewController()
        
        self.navigationController?.pushViewController(aboutVC, animated: true)
    }

}


