//
//  Pokemon.swift
//  Pokedex UIkit
//
//  Created by Ali Eldeeb on 10/31/22.
//

import UIKit

class Pokemon{
    var name: String?
    var imageUrl: String?
    var image: UIImage?
    var id: Int?
    var weight: Int?
    var height: Int?
    var defense: Int?
    var attack: Int?
    var description: String?
    var type: String?
    var baseExperience: Int?
    
    init(id: Int, dictionary: [String: AnyObject]) {
        self.id = id
        //safely checking for name value and then setting it
        if let name = dictionary["name"] as? String{
            self.name = name.capitalized
        }
        if let imageUrl = dictionary["imageUrl"] as? String{
            self.imageUrl = imageUrl
        }
//        if let image = dictionary["image"] as? UIImage{
//            self.image = image
//
//        }
        if let type = dictionary["type"] as? String{
            self.type = type.capitalized
        }
        if let weight = dictionary["weight"] as? Int{
            self.weight = weight
        }
        if let height = dictionary["height"] as? Int{
            self.height = height
        }
        if let defense = dictionary["defense"] as? Int{
            self.defense = defense
        }
        if let attack = dictionary["attack"] as? Int{
            self.attack = attack
        }
        if let description = dictionary["description"] as? String{
            self.description = description
        }
        
        if let baseExperience = dictionary["baseExperience"] as? Int{
            self.baseExperience = baseExperience
        }
    }
}
