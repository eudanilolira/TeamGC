//
//  SearchView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String = ""
    
    struct  Historico {
        var title: String = ""
        var description: String = ""
        //qnd tiver o verdadeiro ou falso
    }
    
    var historico: [Historico] = [Historico(title: "Cloroquina mata", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento."), Historico(title: "Usar máscara ajuda a evitar corona?", description: "- Acreditamos que esse tema tem grande potencial de ser verídico, mas recomendamos que você avalie a fonte antes de compartilhá-la."), Historico(title: "Cloroquina faz bem feito água?", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento.")]
    
    let textField = UITextView()
    
    //UITableViewCell.appearance().cellSelectionStyle = .none
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                HStack(){
                    Text("O que tu ouviu falar?")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding()
                        .padding(.top, 40.0)
                    Spacer()
                }
                
                TextEditor(text: $searchText)
                    .frame(width: 360, height: 140, alignment: .center)
                    .border(Color(.systemGray3))
                    .cornerRadius(5)
                
                HStack {
                    Text("Como checamos?")
                        .font(.headline)
                        .padding([.top, .leading, .trailing])
                    Spacer()
                    
                }
                
                HStack {
                    Text("1- Lemos o que você ouviu falar\n2- Pesquisamos em fontes confiáveis sobre o assunto (em sites com referência em saúde)\n3- Trazemos as respostas para você")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, height: 120, alignment: .center)
                    Spacer()
                }
                
                
                NavigationLink(destination: WaitingView()) {
                    //transformar em butto
                    Button(action:{
                    }){
                        ZStack{
                            Rectangle()
                                .frame(width: 160, height: 50, alignment: .center)
                                .cornerRadius(15)
                                .shadow(radius: 7)
                                .padding()
                            
                            Text("Checar")
                                .foregroundColor(.white)
                        }
                    }
                }
                
                //criar o historico
                
                HStack {
                    Text("Histórico")
                        .font(.headline)
                        .padding()
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 1) {
                        
                        ForEach(0..<(historico.count)){ index in
                            
                            VStack{
                                HStack {
                                    Text(historico[index].title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding([.top, .leading, .trailing])
                                    Image(systemName: "xmark.circle")
                                        .padding()
                                        .foregroundColor(.red)
                                    
                                    Spacer()
                                }
                                
                                HStack {
                                    Text(historico[index].description)
                                        .padding([.leading, .bottom, .trailing])
                                        .padding(.top, 5)
                                        .foregroundColor(Color(.systemGray6))
                                }
                            }
                            
                            .frame(width: 300, height: 150)
                            .background(Color(.systemTeal))
                            .cornerRadius(20)
                            .padding()
                            
                        }
                    }
                }
                
                Spacer()
                
            }.navigationTitle("Pesquisa")
        }
    }
    
    init() {
        UINavigationBar.appearance().backgroundColor = .blue
    }
}

struct WaitingView: View {
    
    var body: some View {
        
        Text("Outra tela")
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
