//
//  ResultCard.swift
//  OuviFalar
//
//  Created by Pedro Henrique Spínola de Assis on 04/12/20.
//

import SwiftUI

struct PositiveResultCard: View {
    var textoPesquisado: String = "Coloquina mata"
    
    var body: some View {
        VStack{
            Text("\"\(textoPesquisado)\"")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 30.0)
            
            Spacer()
                .frame(height: 35)
            
            Image("PositiveResult")
                .padding()
            
            
            Text("Não encontramos indícios claros de que essa mensagem seja fake news, mas recomendamos que você avalie a fonte antes de compartilhá-la.")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .frame(width: 290.0)
                .padding()
            
        Spacer()
            .frame(height: 35)
            
        }
        .frame(width: 350, alignment: .center)
        .background(Color.primaryColor).cornerRadius(15)
    }
}

struct PositiveResultCard_Previews: PreviewProvider {
    static var previews: some View {
        PositiveResultCard()
    }
}
