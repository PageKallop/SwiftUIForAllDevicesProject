//
//  DetailView.swift
//  SwiftUIForAllDevicesProject
//
//  Created by Page Kallop on 1/28/21.
//

import SwiftUI

struct DetailView: View {
    
    let animal: Animal
    
    var body: some View {
        VStack {
            Text(animal.image)
                .font(.custom("Arial", size: 100))
            Text(animal.name)
            Text(animal.description)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animal: Animal(name: "Frog", description: "This is a frog", image: "🐸"))
    }
}
