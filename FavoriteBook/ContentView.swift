//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Alican Kurt on 28.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
      
        
        List {
            
            ForEach(myFavoriteModels){ favoriteModel in
                Section(header: Text(favoriteModel.title)) {
                    ForEach(favoriteModel.elements){element in
                        // Segue
                        NavigationLink(destination: DetailsView(choosenFavoriteElement: element),
                            label: {
                                Text(element.name)
                            })
                        
                        
                    }
                }
            }
            
        }.navigationBarTitle("Favorite Book")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
