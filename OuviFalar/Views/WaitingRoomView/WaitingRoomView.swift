//
//  WaitingRoomView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct WaitingRoomView: View {
    var searchContent: String = ""
    var body: some View {
        VStack{
            HStack {
                Text("Estamos procurando...")
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(.top, 30)
            .padding()
            
            VStack(alignment: .center){
                Text(searchContent)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .padding(.top, 15)
                    .frame(width: 295, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                Spacer()
            }
            
            VStack(alignment: .center){
                WaitingRoomIcons()
                
                Text("Assim que conseguirmos a resposta, iremos te notificar!")
                    .multilineTextAlignment(.center)
                    .frame(width: 240, height: 75, alignment: .center)
                    .font(Font.system(size: 20, design: .default))
                    .padding()
                Spacer()
            }
             
        }
    }
}

struct WaitingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomView()
    }
}
