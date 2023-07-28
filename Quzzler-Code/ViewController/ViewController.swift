//
//  ViewController.swift
//  Quzzler-Code
//
//  Created by IOS - Developer  on 27.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - UI Properties
    private lazy var backgroundImageView: UIImageView = {
        let background = UIImageView()
        background.image = UIImage(named: "backgroundBubbles")
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    private lazy var stackView: UIStackView = {
        let label = UIStackView()
        label.axis = .vertical
        label.spacing = 10
        label.distribution = .fillProportionally
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var scoreLabel: UILabel = {
        let labelScore = UILabel()
        labelScore.font = .systemFont(ofSize: 20)
        labelScore.textColor = .white
        labelScore.textAlignment = .center
        labelScore.translatesAutoresizingMaskIntoConstraints = false
        return labelScore
    }()
    
    private lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textColor = .white
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var firstButton: UIButton = {
        let element = UIButton(type: .system)
        element.titleLabel?.font = .systemFont(ofSize: 25)
        element.tintColor = .white
        element.setBackgroundImage(UIImage(named: "rectangle"), for: .normal)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var secondButton: UIButton = {
        let element = UIButton(type: .system)
        element.titleLabel?.font = .systemFont(ofSize: 25)
        element.tintColor = .white
        element.setBackgroundImage(UIImage(named: "rectangle"), for: .normal)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var threeButton: UIButton = {
        let element = UIButton(type: .system)
        element.titleLabel?.font = .systemFont(ofSize: 25)
        element.tintColor = .white
        element.setBackgroundImage(UIImage(named: "rectangle"), for: .normal)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var progressBar: UIProgressView = {
        let label = UIProgressView()
        label.progress = 0.5
        label.trackTintColor = .white
        label.progressTintColor = UIColor(red: 1.00, green: 0.46, blue: 0.66, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setConstraints()
    }
    
    //MARK: - Private Methods
    private func setView() {
        view.backgroundColor = UIColor(red: 36/255, green: 41/255, blue: 72/255, alpha: 1)
        view.addSubview(backgroundImageView)
        view.addSubview(stackView)
        stackView.addArrangedSubview(scoreLabel)
        stackView.addArrangedSubview(questionLabel)
        stackView.addArrangedSubview(firstButton)
        stackView.addArrangedSubview(secondButton)
        stackView.addArrangedSubview(threeButton)
        stackView.addArrangedSubview(progressBar)
        
        scoreLabel.text = "Score 0"
        questionLabel.text = """
        Which is the largest
        organ in the human
        body?
        """
        firstButton.setTitle("Heart", for: .normal)
        secondButton.setTitle("Skin", for: .normal)
        threeButton.setTitle("Large Intestine", for: .normal)
    }
}

//MARK: - Setup Constraints

extension ViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.heightAnchor.constraint(equalToConstant: 102),
            
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            firstButton.heightAnchor.constraint(equalToConstant: 80),
            secondButton.heightAnchor.constraint(equalToConstant: 80),
            threeButton.heightAnchor.constraint(equalToConstant: 80),
            progressBar.heightAnchor.constraint(equalToConstant: 10)
        ])
    }
}
