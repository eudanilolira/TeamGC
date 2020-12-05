//
//  SearchView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchViewIsActive: Bool
    
    @State var searchText: String = ""
    
    var category = ["Cloroquina", "Bolsonaro", "Covid"]
    @State private var selectedCategory = 0
    
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
            
            ZStack{

                VStack{
                    
                    HStack(){
                        Text("Selecione a categoria")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding()
                        Spacer()
                    }.padding()
                    

                    Picker(selection: $selectedCategory, label: Text("Selecione a categoria: ")) {
                        ForEach(0 ..< category.count) {
                            Text(self.category[$0])
                        }
                    }
                    .padding()
                    .pickerStyle(WheelPickerStyle())

                    
                    HStack(){
                        Text("O que tu ouviu falar?")
                            .font(.title3)
                            .fontWeight(.semibold)
                            //.padding(.trailing, 190.0)
                        
                        
                    }
                    .padding(.top, -50.0)
                    
                    TextEditor(text: $searchText)
                        .frame(width: 360, height: 140, alignment: .center)
                        .border(Color(.systemGray3))
                        .cornerRadius(5)
                        .padding(.top, -15)
                    Spacer()
                    
                    Button(action:{
                    }){
                        ZStack{
                            Rectangle()
                                .frame(width: 160, height: 50, alignment: .center)
                                .cornerRadius(15)
                                .shadow(radius: 7)
                                .foregroundColor(UIColor.primaryColor)
                                .padding()
                            
                            Text("Checar")
                                .foregroundColor(.white)
                        }
                    }
                    
                    //criar o historico
                    
                    HStack {
                        Text("Histórico")
                            .font(.headline)
                            .padding(.top, 20)
                        
                        Spacer()
                    }
                    
                    .padding(.top, 20)
                    .padding([.leading, .bottom])
                    
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
                                
                                .frame(width: 320, height: 170)
                                .background(UIColor.primaryColor)
                                .cornerRadius(20)
                                .padding()
                                
                            }
                        }
                    }
                    .padding(.bottom, 30.0)
                    
                }
                .navigationTitle("Pesquisa")
                
            }.ignoresSafeArea()
        }
        .navigationBarHidden(true)

    }
    
    //    init() {
    //        UINavigationBar.appearance().backgroundColor = UIColor.primaryUIColor
    //    }
}

struct WaitingView: View {
    
    var body: some View {
        
        Text("Outra tela")
        
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView(searchViewIsActive: $searchViewIsActive)
//    }
//}
