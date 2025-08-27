//
//  ContentView.swift
//  Vocalize
//
//  Created by Antônio Paes De Andrade on 25/08/25.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.black, Color.gray], startPoint: .top, endPoint: .bottom)


struct RecordingView: View {
    @State private var isRecording: Bool = false
    var body: some View {
            
            
            ZStack {
                backgroundGradient
                
                VStack{
                    HStack{
                        
                        Button(action:{
                            isRecording.toggle()
                        }){
                            if isRecording == true{
                                
                                Image(systemName: "microphone.slash.circle.fill")
                                    .symbolEffect(.rotate.clockwise.byLayer, options: .repeat(.continuous))
                                    .font(.system(size: 50))
                                    .foregroundStyle(.white, .red)
                            }else{
                                
                                Image(systemName: "microphone.circle.fill")
                                    .symbolEffect(.bounce.up.byLayer,
                                                  options: .nonRepeating)
                                    .font(.system(size: 50))
                                    .foregroundStyle(.red, .white)
                                
                                    
                                    
                            }
                            
                        }
                        
                    }
                }
            }
            .ignoresSafeArea()
    }
}

#Preview {
    RecordingView()
}
