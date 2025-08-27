//
//  ShowAudios.swift
//  Vocalize
//
//  Created by ajpaj on 26/08/25.
//

import SwiftUI

struct ShowAudios: View {
    var body: some View {
        ZStack{
            backgroundGradient
            
            VStack{
                Text("Vocalize").font(.system(size: 50)).bold().foregroundStyle(.white).fontDesign(.rounded)
                    .offset(y: -280)
                    .tracking(4)

                
            }
            
            
            
            
        }.ignoresSafeArea()
        
    }
}

#Preview {
    ShowAudios()
}
