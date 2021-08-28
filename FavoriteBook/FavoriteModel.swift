//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Alican Kurt on 28.08.2021.
//

import Foundation

struct FavoriteModel : Identifiable {
    
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable{
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

// Musics

let scorpions = FavoriteElements(name: "Scorpions", imageName: "scorpions", description: "Best Music: Angel")
let boneyM = FavoriteElements(name: "Boney M", imageName: "boneyM", description: "Best Music: Daddy Cool")
let modernTalking = FavoriteElements(name: "Modern Talking", imageName: "modernTalking", description: "Best Music: Brother Louie")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [scorpions,boneyM,modernTalking])

// Movies

let prestige = FavoriteElements(name: "The Prestige", imageName: "prestige", description: "Best Actor: Christian Bale")
let catchMeIfYouCan = FavoriteElements(name: "Catch Me If You Can", imageName: "catchMeIfYouCan", description: "Best Actor: Leonardo DiCaprio")
let darkKnight = FavoriteElements(name: "The Dark Knight", imageName: "darkKnight", description: "Best Actor: Heath Ledger")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [prestige,catchMeIfYouCan,darkKnight])


// Favorite Model List
let myFavoriteModels = [favoriteBands,favoriteMovies]

