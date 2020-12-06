//
//  WaitingRoomView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct WaitingRoomView: View {
    @ObservedObject var item: Search
    
    var body: some View {
        VStack{
            NavigationLink(
                destination: ResultView(item: item),
                isActive: $item.isConcluded){
                    EmptyView()
                }
            
            HStack {
                Text("Estamos procurando...")
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(.top, 30)
            .padding()
            
            
            Text("\"\(item.text)\"")
                .font(.title2)
                .italic()
                .padding()
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 200, alignment: .center)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            
            Spacer()
            WaitingRoomIcons()
            
            Text("Assim que conseguirmos a resposta, iremos te notificar!")
                .multilineTextAlignment(.center)
                .frame(width: 240, height: 75, alignment: .center)
                .font(Font.system(size: 20, design: .default))
                .padding()
            
            if let intent = item.intent{
                Text(intent)
            }
            
            
            HStack {
                Text("Como checamos?")
                    .font(.headline)
                    .padding([.top, .leading, .trailing])
                Spacer()
            }
            
            
            HStack{
                Text("1. Lemos o que você ouviu falar.\n2. Pesquisamos em fontes confiáveis sobre o assunto.\n3. Trazemos as respostas para você.")
                    .font(.subheadline)
                    .lineSpacing(5)
                    .multilineTextAlignment(.leading)
                    .frame(minWidth: 0, idealWidth: 380, maxWidth: 380, minHeight: 0, idealHeight: 70, maxHeight: 70, alignment: .center)
                Spacer()
                
            }
            .padding([.leading,.trailing,.bottom])
            
            Spacer()
        }
        .onAppear{
            item.startSearch()
        }
    }
}

struct WaitingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomView(item: Search(text: "Cloroquina mata"))
    }
}
