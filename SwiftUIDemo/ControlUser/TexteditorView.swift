//
//  TexteditorView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI

struct TexteditorView: View {
    
    @State var text: String = "Escribe algo"
    @State var contador: Int = 12
    
    var body: some View {
        
        //similar al textfield pero permite añadir mas contenido, inclusive poder hacer scroll
        //este editor recibe un parametro de tipo binding String por lo que debemos crear una propiedad mutable @State
        TextEditor(text: $text)
            .font(.title)
            .keyboardType(.default)
            .autocapitalization(.sentences)
            .autocorrectionDisabled(true)
            .padding()
            .onChange(of: text) { oldValue, newValue in
                contador = newValue.count
            }
        
        Text("\(contador) : caracteres")
            .font(.largeTitle)
            .foregroundColor( contador > 100 ? .red : contador < 10 ? .yellow : .green )
            
    }
}


#Preview {
    TexteditorView()
}

