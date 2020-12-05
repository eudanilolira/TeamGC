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
            
            
            Text("Acreditamos que esse tema tem grande potencial de ser verídico, mas recomendamos que você avalie a fonte antes de compartilhá-la.")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .frame(width: 290.0)
                .padding()
            
        Spacer()
            .frame(height: 35)
            
        }
        .frame(width: 350, alignment: .center)
        .background(UIColor.primaryColor).cornerRadius(15)
    }
}

struct PositiveResultCard_Previews: PreviewProvider {
    static var previews: some View {
        PositiveResultCard()
    }
}

//                HStack {
//                    Text("Como checamos?")
//                        .font(.headline)
//                        .padding([.top, .leading, .trailing])
//                    Spacer()
//                }

//                HStack {
//                    Text("1- Lemos o que você ouviu falar\n2- Pesquisamos em fontes confiáveis sobre o assunto (em sites com referência em saúde)\n3- Trazemos as respostas para você")
//                        .font(.subheadline)
//                        .multilineTextAlignment(.leading)
//                        .frame(width: 350, height: 120, alignment: .center)
//                }
