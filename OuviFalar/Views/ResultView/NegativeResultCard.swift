//
//  NegativeResultCard.swift
//  OuviFalar
//
//  Created by Pedro Henrique Spínola de Assis on 04/12/20.
//

import SwiftUI

struct NegativeResultCard: View {
    var textoPesquisado: String = "Coloquina mata"
    
    var body: some View {
        VStack{
            Text("\"\(textoPesquisado)\"")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.top, 30.0)
            
            Spacer()
                .frame(height: 35)
            
            Image("NegativeResult")
                .padding()
            
            
            Text("Acreditamos que esse tema tem grande potencial de ser fake news. Clique no botão abaixo para compartilhar e alertar!")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
                .frame(width: 290.0)
                .padding()
            
        Spacer()
            .frame(height: 35)
            
        }
        .frame(width: 350, alignment: .center)
        .background(Color.lightYellowColor).cornerRadius(15)
    }
}

struct NegativeResultCard_Previews: PreviewProvider {
    static var previews: some View {
        NegativeResultCard()
    }
}
