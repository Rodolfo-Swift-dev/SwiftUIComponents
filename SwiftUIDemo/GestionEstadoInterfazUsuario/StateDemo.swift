//
//  StateDemo.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI


//@State
//las vistas en SwiftUI son creadas a traves de Struct, de tipos de valor, para poder mutar sus propiedades usamos el propertyWrapper @State.
//con tan solo anteponer @State antes de var facutamos a la propiedad para que cambie y cumpla la funcion de regenerar la vista cuando esto suceda
//fuente de la verdad


struct StateDemo: View {
    
    @State var contador: Int = 0
    
    var body: some View {
       
        Text("\(contador) : Pulsaciones")
        
        Button("Añadir"){
            contador += 1
        }
        
        Button("Restar"){
            contador -= 1
        }
        .foregroundColor(.red)
        
    }
}

#Preview {
    StateDemo()
}
