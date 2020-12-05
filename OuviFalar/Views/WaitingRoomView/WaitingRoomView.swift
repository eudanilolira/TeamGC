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
                Text("\"\(searchContent)\"")
                    .font(.title2)
                    .padding(.top, 25)
                    .frame(width: 295, height: 100, alignment: .center)
                Spacer()
            }
            
            VStack(alignment: .center){
                WaitingRoomIcons()
                
                Spacer()
                
                Text("Assim que conseguirmos a resposta, iremos te notificar!")
                    .multilineTextAlignment(.center)
                    .frame(width: 240, height: 75, alignment: .center)
                    .font(Font.system(size: 20, design: .default))
                    .padding()
                Spacer()
            }
             
        }.navigationBarTitle("Pesquisa")
    }
}

struct WaitingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomView()
    }
}
