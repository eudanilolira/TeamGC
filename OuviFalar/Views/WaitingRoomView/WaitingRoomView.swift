//
//  WaitingRoomView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct WaitingRoomView: View {
    var body: some View {
        VStack{
            VStack(){
                Text("Estamos procurando...")
                    .font(.title)
                    .bold()
                    .padding(.top, 30)
            }
            
            VStack(alignment: .center){
                Text("Usar máscara ajuda a previnir contágio de COVID19")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .padding(.top, 15)
                    .frame(width: 295, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                Spacer()
            }
            
            VStack(){
                HStack(){
                    Image(systemName: "waveform.path.ecg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32, height: 32)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                    Image(systemName: "staroflife")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32, height: 32)
                        .foregroundColor(.blue)
                    Image(systemName: "bandage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32, height: 32)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Image(systemName: "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32, height: 32)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                Text("Assim que conseguirmos a resposta, iremos te notificar!")
                    .frame(width: 240, height: 75, alignment: .center)
                    .font(Font.system(size: 20, design: .default))
                Spacer()
            }
            
            
           

            
            
            
        }
        
        
        
    }
}

struct WaitingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomView()
    }
}
