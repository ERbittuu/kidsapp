//
//  DataManager.swift
//  kidsapp
//
//  Created by Utsav Patel on 28/04/23.
//

import Foundation

struct DataManager {
    static let shared = DataManager()
    private init () {}
    
    var groups: [GroupModel] {
        let animals = GroupModel(title: "animals",
                                  color: .red,
                                  items: [ItemModel(title:"buffalo"),
                                          ItemModel(title:"camel"),
                                          ItemModel(title:"cat"),
                                          ItemModel(title:"chimpanzee"),
                                          ItemModel(title:"cow"),
                                          ItemModel(title:"deer"),
                                          ItemModel(title:"dog"),
                                          ItemModel(title:"dolphin"),
                                          ItemModel(title:"donkey"),
                                          ItemModel(title:"elephent"),
                                          ItemModel(title:"fox"),
                                          ItemModel(title:"frog"),
                                          ItemModel(title:"gecko"),
                                          ItemModel(title:"giraffe"),
                                          ItemModel(title:"goat"),
                                          ItemModel(title:"gorilla"),
                                          ItemModel(title:"hippopotamus"),
                                          ItemModel(title:"horse"),
                                          ItemModel(title:"kangaroo"),
                                          ItemModel(title:"koala"),
                                          ItemModel(title:"leopard"),
                                          ItemModel(title:"lion"),
                                          ItemModel(title:"monkey"),
                                          ItemModel(title:"mouse"),
                                          ItemModel(title:"panda"),
                                          ItemModel(title:"panther"),
                                          ItemModel(title:"rabbit"),
                                          ItemModel(title:"rhino"),
                                          ItemModel(title:"squirrel"),
                                          ItemModel(title:"tiger"),
                                          ItemModel(title:"zebra")])
        
        let birds = GroupModel(title: "birds",
                                  color: .white,
                                  items: [ItemModel(title:"bee"),
                                          ItemModel(title:"blackbird"),
                                          ItemModel(title:"butterfly"),
                                          ItemModel(title:"canary"),
                                          ItemModel(title:"chameleon"),
                                          ItemModel(title:"cockatiel"),
                                          ItemModel(title:"Contents"),
                                          ItemModel(title:"crow"),
                                          ItemModel(title:"dragonfly"),
                                          ItemModel(title:"duck"),
                                          ItemModel(title:"eagle"),
                                          ItemModel(title:"fly"),
                                          ItemModel(title:"hen"),
                                          ItemModel(title:"kite"),
                                          ItemModel(title:"mantis"),
                                          ItemModel(title:"mosquito"),
                                          ItemModel(title:"owl"),
                                          ItemModel(title:"parrot"),
                                          ItemModel(title:"peacock"),
                                          ItemModel(title:"penguin"),
                                          ItemModel(title:"pigeon"),
                                          ItemModel(title:"robin"),
                                          ItemModel(title:"rooster"),
                                          ItemModel(title:"sparrow"),
                                          ItemModel(title:"wasp"),
                                          ItemModel(title:"woodpecker")])
        
        let vehicles = GroupModel(title: "vehicles",
                                  color: .red,
                                  items: [])

        
        return [animals, birds]
    }
}



