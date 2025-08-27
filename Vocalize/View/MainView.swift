//
//  MainView.swift
//  Vocalize
//
//  Created by Antônio Paes De Andrade on 25/08/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack{
            
            
            TabView{
                
                Tab("Home", systemImage: "house.fill"){
                    ShowAudios()
                }
                Tab("Recording", systemImage: "microphone.fill"){
                    RecordingView()
                }
            }.accentColor(Color.white)

        }
    }
        
}

#Preview {
    MainView()
}
