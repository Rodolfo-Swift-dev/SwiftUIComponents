//
//  ProgressViewView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI


//ProgressView
//vista de progreso donde retroalimentamos con informacion al usuario que algun proceso esta cargando o lo mismo pero expresando porcentualmente el progreso desde 0 a 1 como numero flotante.
//existe una barra de progreso lineal que tiene un rango porcentual y existe otra barra de progreso circular que es infinita, recomendable mostrar cuando esta cargando algun proceso
//cuando el progreso es numerico y almacenado, esta vista recibe un parametro de tipo binding String por lo que debemos crear una propiedad mutable @State


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
