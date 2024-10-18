//
//  ContentView.swift
//  tugas
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    let countryFlag = ["🇲🇨", "🇲🇳", "🇲🇪", "🇲🇸", "🇲🇦", "🇲🇿", "🇲🇲", "🇳🇦", "🇳🇷", "🇳🇵", "🇳🇱", "🇳🇨", "🇳🇿", "🇳🇮", "🇳🇪", "🇳🇬", "🇳🇺", "🇳🇫", "🇰🇵", "🇲🇰"]
    
    @State private var showCountry = false
    @State private var displayedCountry = ""
    
    var body: some View {
        VStack {
            if showCountry{
                Text(displayedCountry)
                    .font(.system(size: 200))
                    .padding()
            }
            else{
                Text(" ")
                    .font(.system(size: 200))
                    .padding()
            }
            Button(action: {
                displayedCountry = countryFlag.randomElement() ?? "Unknown"
                showCountry = true
            }){
                Text("Go!")
                    .font(.title)
                    .padding()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
