//
//  MainView.swift
//  Vocalize
//
//  Created by Antônio Paes De Andrade on 25/08/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            Tab("Home", systemImage: "house.fill"){
                RecordingView()
            }
        }
    }
}

#Preview {
    MainView()
}
