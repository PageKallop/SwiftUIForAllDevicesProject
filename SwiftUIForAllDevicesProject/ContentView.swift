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
        List(self.animals, id: \.name) { animal in
            HStack {
                Text(animal.image)
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
