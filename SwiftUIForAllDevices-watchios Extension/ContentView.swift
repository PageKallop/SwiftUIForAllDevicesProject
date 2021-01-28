//
//  ContentView.swift
//  SwiftUIForAllDevices-watchios Extension
//
//  Created by Page Kallop on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    
    private let animals = AnimalService.getAll()
  
    var body: some View {
        List {
            
            ForEach(self.animals, id: \.name) { animal in
                NavigationLink(destination: SwiftUIView(animal: animal)) {
                AnimalCell(animal: animal)
                }
            }
        }.listStyle(CarouselListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AnimalCell: View {
    
    let animal: Animal
    
    var body: some View {
        VStack {
            Text(animal.image)
                .font(.custom("Arial", size: 100))
            Text(animal.name)
        }.frame(minWidth: 0, maxWidth: .infinity)
    }
}
