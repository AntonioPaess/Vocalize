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
        TabView{
            
            
            ZStack {
                backgroundGradient
                
                VStack{
                    Text("Vocalize").font(.system(size: 50)).bold().foregroundStyle(.white).fontDesign(.rounded)
                        .offset(y: -280)
                        .tracking(4)
                    
                    
                    
                    HStack{
                        
                        Button(action:{
                            isRecording.toggle()
                        }){
                            if isRecording == true{
                                
                                Image(systemName: "wave.3.left").symbolEffect(.disappear)
                                    .font(.system(size: 50))
                                    .foregroundStyle(.white)
                                Image(systemName: "microphone.slash.circle.fill")
                                    .symbolEffect(.rotate.clockwise.byLayer, options: .repeat(.continuous))
                                    .font(.system(size: 50))
                                    .foregroundStyle(.white, .red)
                                Image(systemName: "wave.3.right").symbolEffect(.disappear)
                                    .font(.system(size: 50))
                                    .foregroundStyle(.white)
                                
                            }else{
                                
                                Image(systemName: "wave.3.backward").symbolEffect(.wiggle.wholeSymbol, options: .nonRepeating)
                                    .font(.system(size: 50))
                                    .foregroundStyle(.white)
                                Image(systemName: "microphone.circle.fill").symbolRenderingMode(.palette)
                                    .font(.system(size: 50))
                                    .foregroundStyle(.red, .white)
                                Image(systemName: "wave.3.forward").symbolEffect(.wiggle.wholeSymbol, options: .nonRepeating)
                                    .font(.system(size: 50))
                                    .foregroundStyle(.white)
                            }
                            
                        }
                        
                    }
                }
            }
            .ignoresSafeArea()
            
        }
        
        
        
        
        
        
    }
}

#Preview {
    RecordingView()
}
