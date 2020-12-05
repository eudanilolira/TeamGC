//
//  SearchView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String = ""
    
    var category = ["Cloroquina", "Eleições", "Covid"]
    @State private var selectedCategory = 0
    
    @State private var isPickerShown: Bool = false
    
    struct  Historico {
        var title: String = ""
        var description: String = ""
    }
    
    var historico: [Historico] = [Historico(title: "Cloroquina mata", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento."), Historico(title: "Usar máscara ajuda a evitar corona?", description: "- Acreditamos que esse tema tem grande potencial de ser verídico, mas recomendamos que você avalie a fonte antes de compartilhá-la."), Historico(title: "Cloroquina faz bem feito água?", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento.")]
    
    let textField = UITextView()
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                
                HStack(){
                    Text("Selecione a categoria")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                .padding()
                Button(action:{
                    isPickerShown = true
                }){
                    HStack{
                        Spacer()
                        Text(category[selectedCategory])
                            .padding()
                            .foregroundColor(.primary)
                        Spacer()
                    }
                }
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                
                HStack(){
                    Text("O que tu ouviu falar?")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding([.leading, .top])
                
                TextEditor(text: $searchText)
                    .border(Color(.systemGray3))
                    .cornerRadius(5)
                    .padding(.horizontal)
                
                
                NavigationLink(destination: WaitingRoomView(searchContent: searchText)){
                    Text("Checar")
                        .padding()
                        .padding(.horizontal, 40)
                        .background(UIColor.primaryColor)
                        .foregroundColor(Color(.systemBackground))
                        .cornerRadius(10)
                        .shadow(radius: 7)
                }
                .padding(.top)
                .disabled(searchText.isEmpty)
                HStack {
                    Text("Histórico")
                        .font(.headline)
                    Spacer()
                }
                
                .padding([.top, .leading])
                
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
                                
                                
                                Text(historico[index].description)
                                    .padding([.leading, .bottom, .trailing])
                                    .padding(.top, 5)
                                    .foregroundColor(Color(.systemGray6))
                                
                                Spacer()
                            }
                            
                            .frame(maxWidth: 320)
                            .background(UIColor.primaryColor)
                            .cornerRadius(20)
                            .padding()
                            
                        }
                    }
                }
                
                
            }
            .blur(radius: isPickerShown ? 3.0 : 0)
            .disabled(isPickerShown)
            .onTapGesture {
                if isPickerShown{
                    isPickerShown = false
                }
            }
            
            VStack{
                Picker(selection: $selectedCategory, label: Text("Selecione a categoria: ")) {
                    ForEach(0 ..< category.count) {
                        Text(self.category[$0])
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding()
            }
            .background(Color(.systemGray6))
            .offset(y: isPickerShown ? 0 : UIScreen.main.bounds.height)
            .animation(.spring())
            
            
        }
        .navigationTitle("Pesquisa")
        .navigationBarHidden(false)

    }
    
}

struct WaitingView: View {
    
    var body: some View {
        
        Text("Outra tela")
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SearchView()
        }
    }
}
