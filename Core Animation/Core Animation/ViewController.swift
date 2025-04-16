
//Created by Kalpana Mallavarapu (Z1980052).

import UIKit

enum Animations : String {
    
    case select = "Select Animation"
    case fadeIn
    case fadeOut
    case rotate
    case move
    case scale
    case spring
    case changeColor = "Change Color"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var animation_img: UIImageView!
    @IBOutlet weak var btn_animation: UIButton!
    @IBOutlet weak var bg_backView: UIView!
    
    var img_location :CGPoint = .zero
    
    var arrAnimations :[Animations] = [.select,.fadeIn,.fadeOut,.move,.rotate,.scale,.spring,.changeColor]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img_location = animation_img.center
        showMenu()
        
    }
    
    //MARK: - Setup selection menu
    
    func showMenu() {
        
        var arrChilds = [UIMenuElement]()
        
        for obj in arrAnimations {
            
            let action =  UIAction(title: obj.rawValue.capitalized, image: nil, identifier: nil, handler: { _ in
                
                self.btn_animation.setTitle(obj.rawValue.capitalized, for: .normal)
                self.setUpAnimations(type: obj)
            })
            
            arrChilds.append(action)
        }
        
        let actionMenu = UIMenu(
            title: "Animations",
            children: arrChilds)
        
        btn_animation.menu = actionMenu
        btn_animation.showsMenuAsPrimaryAction = true
    }
    
    //MARK :- Animations
    
    func setUpAnimations(type:Animations) {
        
        resetView()
        
        switch type {
        case .select :
            
            resetView()
            
        case .fadeIn:
            
            animateFadeIn()
            
        case .fadeOut:
            
            animateFadeOut()
            
        case .rotate:
            
            animateRotate()
            
        case .move:
            
            animateMove()
            
        case .scale:
            
            animateScale()
            
        case .spring:
            
            animateSpring()
            
        case .changeColor :
            
            animateColorChange()
        }
    }
    
    
    //MARK: - For reset view  - its reset with all initial value
    
    func resetView(){
        
        animation_img.center = img_location
        animation_img.transform = CGAffineTransform(scaleX: 1, y: 1)
        self.bg_backView.backgroundColor = .white
        animation_img.layer.removeAllAnimations()
        animation_img.alpha = 1
    }
    
    //MARK: - Animations
    
    func animateFadeIn() {
        
        animation_img.alpha = 0
        
        UIView.animate(withDuration: 2.0) {
            
            self.animation_img.alpha = 1
        }
    }
    
    func animateFadeOut() {
        
        UIView.animate(withDuration: 1.0) {
            
            self.animation_img.alpha = 0
        }
    }
    
    func animateRotate() {
        
        UIView.animate(withDuration: 2.0) {
            
            // rotate to 180  angle
            self.animation_img.transform = CGAffineTransform(rotationAngle: .pi)
            
        } completion: { isCompleted in
            
            if isCompleted  {
                
                UIView.animate(withDuration: 2.0) {
                    
                    // reverse rotation
                    self.animation_img.transform = CGAffineTransform(rotationAngle: -2 * CGFloat.pi)
                }
            }
        }
    }
    
    func animateMove() {
        
        UIView.animate(withDuration: 1.0) {
            
            // move to first location
            self.animation_img.frame.origin.x += 50
            self.animation_img.frame.origin.y += 50
            
        } completion: { isCompleted in
            
            if isCompleted  {
                
                UIView.animate(withDuration: 2.0) {
                    
                    //after completion above one move to second location
                    self.animation_img.frame.origin.x -= 150
                }
            }
        }
    }
    
    func animateScale() {
        
        UIView.animate(withDuration: 1.5) {
            
            // set scale original to big size
            self.animation_img.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            
        } completion: { isCompleted in
            
            if isCompleted  {
                
                UIView.animate(withDuration: 1.5) {
                    
                    // set scale big size to original size
                    self.animation_img.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                }
            }
        }
    }
    
    func animateSpring() {
        
        self.animation_img.center.y -= 100
        
        UIView.animate(withDuration: 1.0,
                       delay: 0.2,
                       usingSpringWithDamping: 0.3, // set spring damping according to you
                       initialSpringVelocity: 0,
                       options: .curveEaseInOut,
                       animations: {
            
            self.animation_img.center.y += 100
        })
    }
    
    func animateColorChange() {
        
        UIView.animate(withDuration: 3.0) {
            
            self.bg_backView.backgroundColor = UIColor.yellow
        }
    }
}

