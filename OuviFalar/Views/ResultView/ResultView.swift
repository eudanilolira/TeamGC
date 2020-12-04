//
//  ResultView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI
import UIKit

struct ResultView: View {
    var test = true
    @State private var isShareSheetShowing = false
    
    var body: some View {
        VStack{
            if test{
                PositiveResultCard()
                
                Spacer()
                    .frame(height: 85)
                
                Button(action: {
                    
                    isShareSheetShowing.toggle()
                
                }, label: {
                    Text("Compartilhar")
                }).sheet(isPresented: $isShareSheetShowing, onDismiss: {
                    print("Dismiss")
                }, content: {
                    ActivityViewController(activityItems: ["Veja a notícia que eu chequei no Ouvi falar"])
                })
                .foregroundColor(.white)
                .frame(width: 150, height: 60)
                .background(Color(.systemBlue))
                .cornerRadius(15)
                
            }else{
                NegativeResultCard()
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
