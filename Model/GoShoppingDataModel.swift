//
//  GoShoppingDataModel.swift
//  GoSneakerShopping
//
//  Created by Andrew Cho on 8/26/22.
//

import Foundation
import UIKit

//Assignment 1
struct Sneakers {
    var brand: String
    var name: String
    var gender: String
    var size: Double
    var color: String
    var price: Double
    var sports: String? //Assignment 3
}
//Assignment 2

var emptySneakersCollection : [Sneakers] = []


//Assignment 4
var socccerShoes = Sneakers(brand: "Nike", name: "nameSoccer", gender: "Men", size: 9.0, color: "Black", price: 100.0, sports: "Soccer")
var balletShoes = Sneakers(brand: "Adidas", name:  "nameBallet", gender: "Women", size: 6.0, color: "White", price: 180.0, sports: "Ballet")
var classicShoes = Sneakers(brand: "New Balance", name: "nameClassic", gender: "Women", size: 5.0, color: "White", price: 70.0,sports: nil)
var casualShoes = Sneakers(brand: "Puma", name:"nameCasual", gender: "Men", size: 8.5, color: "Red", price: 110.0, sports: nil)
var basketballShoes = Sneakers(brand: "Nike", name: "nameBasketball", gender: "Men", size: 10.0, color: "Yellow", price: 200.0, sports: "Basketball")
var tennisShoes = Sneakers(brand: "Lotto", name: "nameTennis", gender: "Women", size: 6.5, color: "Blue", price: 300.0, sports: "Tennis")

//Assignment 5
func addNewSneakers(newSneakers: Sneakers) {
    emptySneakersCollection.append(newSneakers)
    
}
/*
addNewSneakers(newSneakers: socccerShoes)
addNewSneakers(newSneakers: balletShoes)
addNewSneakers(newSneakers: classicShoes)
addNewSneakers(newSneakers: casualShoes)
addNewSneakers(newSneakers: basketballShoes)
addNewSneakers(newSneakers: tennisShoes)
print(emptySneakersCollection)
*/

//Assignment 6
func printOutSneakersWithOptionalProperties(sneakers: [Sneakers]) -> [Sneakers] {
    for sneaker in sneakers {
        if sneaker.sports == nil {
            print("\(sneaker.name) has no sports properties \n")
        }
    }
    return emptySneakersCollection //Assignment 7

}
//print(printOutSneakersWithOptionalProperties(sneakers: emptySneakersCollection))
