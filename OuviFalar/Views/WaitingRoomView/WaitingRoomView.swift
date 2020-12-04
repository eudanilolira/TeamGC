//
//  WaitingRoomView.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import SwiftUI

struct WaitingRoomView: View {
    var body: some View {
        VStack (
            alignment: .leading,
            spacing: 10
        ){
            Text("Estamos procurando...")
            Text("Usar máscara ajuda a previnir contágio de COVID19")
           

        }
        
        
        
    }
}

struct WaitingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomView()
    }
}
