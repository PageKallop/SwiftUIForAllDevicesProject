//
//  ContentView.swift
//  SwiftUIForAllDevices-watchios Extension
//
//  Created by Page Kallop on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    var makeIt = ["a","b", "c", "d"]
    var body: some View {
        List{
            ForEach(self.makeIt, id: \.self) { make in
                Text(make)
            }
        
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
