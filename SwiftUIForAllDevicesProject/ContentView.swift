//
//  ContentView.swift
//  SwiftUIForAllDevicesProject
//
//  Created by Page Kallop on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    
    private var animals = AnimalService.getAll()
    var body: some View {
        NavigationView {
        
        List(self.animals, id: \.name) { animal in
            NavigationLink(destination: SwiftUIView(animal: animal)){
            HStack {
                Text(animal.image)
                    .font(.custom("Arial", size: 100))
                Text(animal.name)
                    .font(.title)
             }
            }
         }
        .navigationBarTitle("Animals")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
