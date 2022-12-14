//
//  Extensions.swift
//  Pokedex UIkit
//
//  Created by Ali Eldeeb on 10/30/22.
//

import UIKit

extension UIView{
    func anchor(top: NSLayoutYAxisAnchor? = nil, leading: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, trailing: NSLayoutXAxisAnchor? = nil, paddingTop: CGFloat = 0, paddingLeading: CGFloat = 0, paddingBottom: CGFloat = 0, paddingTrailing: CGFloat = 0){
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let leading = leading{
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
        }
        
        if let bottom = bottom{
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let trailing = trailing{
            trailingAnchor.constraint(equalTo: trailing, constant: -paddingTrailing).isActive = true
        }
    }
    
    func setDimesions(height: CGFloat, width: CGFloat){
        translatesAutoresizingMaskIntoConstraints = false
        
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func centerX(inView view: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerY(inView view: UIView, contstant: CGFloat = 0){
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -contstant).isActive = true
    }
    
    func anchorSize(to view: UIView){
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
}

extension UITextField{
    func makeTextField(placeholder: String, isSecureField: Bool) -> UITextField{
        let tf = UITextField()
        tf.borderStyle = .bezel
        tf.textColor = .black
        tf.backgroundColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor : UIColor.darkGray])
        tf.isSecureTextEntry = isSecureField
        return tf
    }
}

extension UILabel{
    func makeLabel(withText text: String? = nil, textColor: UIColor? = nil, withFont font: UIFont) -> UILabel{
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = font
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 0
        return label
    }
    
    func makeAttributedRichTextLabel(withText text: String, textColor: UIColor, withFont font: UIFont) -> UILabel{
        let label = UILabel()
        if let data = text.data(using: .utf8){
            let attributedString = try? NSAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey.documentType : NSAttributedString.DocumentType.html], documentAttributes: nil )
            label.attributedText = attributedString
        }else{
            label.text = text
        }
        label.textColor = textColor
        label.font = font
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 0
        return label
    }
    
}

extension UIButton{
    func makeButton(withTitle title: String, titleColor: UIColor, buttonColor: UIColor, isRounded: Bool) -> UIButton{
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = buttonColor
        
        if isRounded{
            button.layer.cornerRadius = 8
        }
        
        return button
    }
}

extension UIColor{
    static func setRGB(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static func mainBlue() -> UIColor{
        return UIColor(red: 17/255, green: 154/255, blue: 237/255, alpha: 1)
    }
    
    static func purple() -> UIColor{
        return UIColor.setRGB(red: 98, green: 0, blue: 238)
    }
    
    static func mainPink() -> UIColor{
        return UIColor.setRGB(red: 221, green: 94, blue: 86)
    }
    
    static func teal() -> UIColor{
        return UIColor.setRGB(red: 3, green: 218, blue: 197)
    }
}




