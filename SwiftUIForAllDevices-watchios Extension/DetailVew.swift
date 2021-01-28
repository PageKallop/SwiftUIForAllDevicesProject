//
//  DetailVew.swift
//  SwiftUIForAllDevices-watchios Extension
//
//  Created by Page Kallop on 1/28/21.
//

import SwiftUI

struct DetailVew: View {
   
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

struct DetailVew_Previews: PreviewProvider {
    static var previews: some View {
        DetailVew(animal: Animal(name: "Frog", description: "This is a frog", image: "🐸"))
    }
}
