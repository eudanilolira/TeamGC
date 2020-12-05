//
//  View+resignKeyboardOnTapGesture.swift
//  OuviFalar
//
//  Created by Samuel Brasileiro on 05/12/20.
//
import SwiftUI

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

struct ResignKeyboardOnTapGesture: ViewModifier {
    var gesture = TapGesture().onEnded{_ in
        UIApplication.shared.endEditing(true)
    }
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

extension View {

    func resingKeyboardOnTapGesture() -> some View{
        return modifier(ResignKeyboardOnTapGesture())
    }
}
