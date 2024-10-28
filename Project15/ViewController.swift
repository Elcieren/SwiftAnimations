//
//  ViewController.swift
//  Project15
//
//  Created by Eren Elçi on 28.10.2024.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var currentAnimation = 0
    var currentAnimationTwo = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
        
    }

    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        UIView.animate(withDuration: 1, delay: 0,options: []) {
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                break
            case 1:
                self.imageView.transform = .identity
                break
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
                break
            case 3:
                self.imageView.transform = .identity
                break
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
                break
            case 5:
                self.imageView.transform = .identity
                break
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = .green
                break
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = .clear
                break
            default:
                break
                
                
            }
        } completion: { finished in
            sender.isHidden = false
        }

        
        currentAnimation += 1
        print(currentAnimation)
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
    @IBAction func tappedTwo(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [], animations: {
            switch self.currentAnimationTwo {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
            case 1:
                self.imageView.transform = .identity
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
            case 3:
                self.imageView.transform = .identity
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
            case 5:
                self.imageView.transform = .identity
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = .green
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = .clear
            default:
                break
            }
        }, completion: { finished in

            sender.isHidden = false
        })
        currentAnimationTwo += 1
        if currentAnimationTwo > 7  {
            currentAnimationTwo = 0
        }
    }
}

