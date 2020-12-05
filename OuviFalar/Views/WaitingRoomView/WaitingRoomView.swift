//
//  WaitingRoomView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct WaitingRoomView: View {
    var searchContent: String = "Texto"
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
            
            
                Text("\"\(searchContent)\"")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .padding(.top, 15)
                    .frame(width: 295, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)

            
            Spacer()
                .frame(minHeight: 70, idealHeight:150, maxHeight: 200, alignment: .center)
            
                WaitingRoomIcons()
                                
                Text("Assim que conseguirmos a resposta, iremos te notificar!")
                    .multilineTextAlignment(.center)
                    .frame(width: 240, height: 75, alignment: .center)
                    .font(Font.system(size: 20, design: .default))
                    .padding()
                
                Spacer()
                
                HStack {
                    Text("Como checamos?")
                        .font(.headline)
                        .padding([.top, .leading, .trailing])
                    Spacer()
                }

                
                HStack{
                    Text("1- Lemos o que você ouviu falar.\n2- Pesquisamos em fontes confiáveis sobre o assunto.\n3- Trazemos as respostas para você.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .frame(minWidth: 0, idealWidth: 380, maxWidth: 380, minHeight: 0, idealHeight: 70, maxHeight: 70, alignment: .center)
                    Spacer()
                        
                }
                .padding(.trailing,5)
                .padding(.bottom)
            
            Spacer()
        }
    }
}

struct WaitingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomView()
    }
}
