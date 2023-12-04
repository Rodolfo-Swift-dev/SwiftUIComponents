//
//  LabelView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        
        Spacer()
        
        Label("Rodolfo Gonzalez", systemImage: "xmark.square.fill")
            .foregroundColor(.red)
            .font(.largeTitle)
        //en ocasiones cuando necesitamos priorizar un texto en vez de imagen es que recurriomos a este modificador
        //recomendable en vistas que reducen su tamaño como toolBar o NavigationView
            .labelStyle(.titleOnly)
        
        Spacer()
        
        //Label con codigo mas personalizado
        Label(
            title: { Text("Rodolfo Gonzalez")
                    .foregroundColor(.gray)
                    .font(.title2)
                    },
            icon: { Image(systemName: "xmark.square.fill")
                .foregroundColor(.red)}
        )
        
        Spacer()
        
        Label("Rodolfo Gonzalez", systemImage: "xmark.square.fill")
            .foregroundColor(.blue)
            .font(.largeTitle)
        //en ocasiones cuando necesitamos priorizar una imagen antes que un texto es que recurriomos a este modificado.
        //recomendable en vistas que reducen su tamaño como toolBar o NavigationView
            .labelStyle(.iconOnly)
        
        Spacer()
    }
}

#Preview {
    LabelView()
}
