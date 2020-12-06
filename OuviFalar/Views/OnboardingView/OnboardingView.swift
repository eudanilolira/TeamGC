//
//  OnboardingView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct OnboardView: View{
    
    var body: some View{
        NavigationView{
                
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        Text("Bem vindo ao")
                            .font(.largeTitle)
                            .bold()
                        Text("Ouvi Falar.")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.primaryColor)
                    }.padding()
                    .padding(.top, 40)
                    Spacer()
                    VStack(alignment: .leading, spacing: 40){
                        HStack{
                            Image(systemName: "arrow.up.message")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            VStack(alignment: .leading){
                                Text("Mande uma mensagem")
                                    .font(.headline)
                                    .bold()
                                Text("Compartilhe uma mensagem sobre saúde que você recebeu em alguma rede social.")
                                    .font(.subheadline)
                                    .foregroundColor(Color(.systemGray))
                                
                            }
                        }.frame(maxWidth: 300)
                        
                        HStack{
                            Image(systemName: "checkmark.shield")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            
                            VStack(alignment: .leading){
                                Text("Confira a veracidade")
                                    .font(.headline)
                                    .bold()
                                Text("Nós fazemos a checagem se provavelmente a informação é fake news.")
                                    .font(.subheadline)
                                    .foregroundColor(Color(.systemGray))
                                
                            }
                        }.frame(width: 300)
                        HStack{
                            Image(systemName: "paperplane")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            
                            VStack(alignment: .leading){
                                Text("Compartilhe a informação")
                                    .font(.headline)
                                    .bold()
                                Text("Você pode compartilhar a informação seguro de que não se trata de fake news.")
                                    .font(.subheadline)
                                    .foregroundColor(Color(.systemGray))
                                
                            }
                        }.frame(maxWidth: 300)
                    }
                    
                    Spacer()
                    NavigationLink(destination: SearchView()){
                        Text("Começar")
                            .font(.headline)
                            .foregroundColor(Color(.systemBackground))
                            .padding(.horizontal, 100.0)
                            .padding()
                            .background(Color.primaryColor)
                            .cornerRadius(14)
                            .padding(.bottom, 40)
                    }
                    
                }
                .background(Color.clear)
                .navigationBarHidden(true)
            }
        
        
    }
}

struct OnboardView_Previews: PreviewProvider{
    
    static var previews: some View{
        OnboardView()
    }
}

extension Color {
    static let primaryColor = Color(red: 0x66/0xff, green: 0x99/0xff, blue: 0xf2/0xff)
    
    static let darkYellowColor = Color(red: 0x89/0xff, green: 0x91/0xff, blue: 0xf08/0xff)
    
    static let lightYellowColor = Color(red: 0xf2/0xff, green: 0xdc/0xff, blue: 0x66/0xff)
}
