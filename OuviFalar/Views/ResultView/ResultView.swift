//
//  ResultView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI
import UIKit

struct ResultView: View {
    var test = false
    @State private var isShareSheetShowing = false
    
    struct  Historico {
        var title: String = ""
        var description: String = ""
    }
    
    var historico: [Historico] = [Historico(title: "Cloroquina mata", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento."), Historico(title: "Usar máscara ajuda a evitar corona?", description: "- Acreditamos que esse tema tem grande potencial de ser verídico, mas recomendamos que você avalie a fonte antes de compartilhá-la."), Historico(title: "Cloroquina faz bem feito água?", description: "- Acreditamos que esse tema tem grande potencial de ser fake news e por isso não recomendamos seu compartilhamento.")]
    
    var body: some View {
        VStack{
            if test{
                
                PositiveResultCard()
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
                
                
            }else{
                NegativeResultCard()
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
                    ActivityViewController(activityItems: ["FAKE NEWS!\nChequei no Ouvi falar e \"Texto\" tem indícios de FAKE NEWS"])
                })
                .foregroundColor(.black)
                .frame(width: 150, height: 60)
                .background(Color.lightYellowColor)
                .cornerRadius(15)
                .shadow(radius: 5
                )
                
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
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
