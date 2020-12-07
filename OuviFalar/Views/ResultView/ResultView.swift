//
//  ResultView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI
import UIKit

struct ResultView: View {
    
    @ObservedObject var item: Search
    
    @State private var isShareSheetShowing = false
    
    struct  Historico {
        var title: String = ""
        var description: String = ""
    }
    
    var historico: [Historico] = [Historico(title: "Cloroquina é recomendável para a Covid", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento."), Historico(title: "Cloroquina pode causar infarto", description: "- Não encontramos indícios claros de que se trata de uma Fake News, mas recomendamos que você avalie a fonte antes de compartilhá-la."), Historico(title: "Cloroquina é usada para Covid desde 2005", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento.")]
    
    var body: some View {
        VStack{
            if item.information == .info{
                
                PositiveResultCard(searchText: item.text)
                    .padding()
                
                HStack {
                    Text("Notícias sobre o tema")
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
                            }
                            
                            .frame(maxWidth: 320)
                            .background(Color.primaryColor)
                            .cornerRadius(20)
                            .padding()
                            
                        }
                    }.frame(height: 200)
                }
                
                
            }
            else{
                NegativeResultCard(searchText: item.text)
                Spacer()
                    .frame(height: 85)
                
                Button(action: {
                    
                    isShareSheetShowing.toggle()
                    
                }, label: {
                    Text("Compartilhar")
                        .fontWeight(.medium)
                })
                .sheet(isPresented: $isShareSheetShowing, onDismiss: {
                    print("Dismiss")
                }, content: {
                    ActivityViewController(activityItems: ["Cuidado!\nChequei no Ouvi falar e \"\(item.text)\" tem indícios de ser fake news. Não assuma como verdade!"])
                })
                .foregroundColor(.black)
                .frame(width: 150, height: 60)
                .background(Color.lightYellowColor)
                .cornerRadius(15)
                .shadow(radius: 5
                )
                
            }
        }
        .onAppear{
//            let userDefaults = UserDefaults(suiteName: "group.br.ufpe.academy.OuviFalar")
//            userDefaults?.setValue("", forKey: "start-text-key")
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(item: Search(text: "Coringa mata"))
    }
}


struct ActivityViewController: UIViewControllerRepresentable {
    
    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityViewController>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityViewController>) {}
    
}
