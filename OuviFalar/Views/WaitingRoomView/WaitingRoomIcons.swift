//
//  WaitingRoomIcons.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct WaitingRoomIcons: View {
    @State var isAnimating: Bool = false
    @State var images: [String] = ["waveform.path.ecg", "staroflife", "bandage", "heart"]
    var body: some View {
        HStack(spacing: 7){
            ForEach(0..<images.count, id: \.self) { index in
                Image(systemName: self.images[index])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 32, height: 32)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .offset(y: isAnimating ? -50 : 0)
                    .onAppear {
                        self.isAnimating = true
                        self.images.shuffle()
                    }
                    .animation(Animation.linear(duration: 0.8)
                                .repeatForever()
                                .delay(0.3 * Double(index))
                    )
            }
        }
        
        .frame(width: 200)

    }
}

struct WaitingRoomIcons_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomIcons()
    }
}
