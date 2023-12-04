//
//  ProgressViewView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI



struct ProgressViewView: View {
    
    @State var progress: Float = 0
    @State var isLoading: Bool = false
    
    var body: some View {
        
        //vista muy usada para dar feedback visual al usuario de que alguna tarea esta en proceso y que aun no ha finiquitado
        //barra de progreso con progreso de tipo float que va de 0 a 1.0 y un valor actual
        ProgressView("Cargando".uppercased(), value: progress)
            .padding()
        
        Button("Incrementar", action: {
            progress += 0.1
        })
        
        Spacer()
        
        if isLoading {
            
            //circulo de progreso con progreso de tipo infinito, podemos manejar si se muestra o no con una variable @State
            ProgressView("Cargando")
                .scaleEffect(2)
                .padding()
            
            Button("Detener") {
                isLoading = false
            }
            .foregroundColor(.red)
            .font(.title)
            
        }else {
            
            Button("Cargar") {
                isLoading = true
            }
            .foregroundColor(.green)
            .font(.title)
            
        }
        
        Spacer()
    }
}

#Preview {
    ProgressViewView()
}
