//
//  IconsAndSFView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI


//Iconos y SFSymbols
//en la aplicacion SFSymbols cuentas con mas de 4000 iconos disponibles.
//incluso hay iconos que se les puede modificar su color de relleno
//hay iconos restringidos para usos especificos como el simbolo de Safari


struct IconsAndSFView: View {
    
    var body: some View {
        
        
        Image(systemName: "person.3.sequence.fill")
        //renderizado de simbolo original
            .renderingMode(.original)
            .resizable()
            .frame(width: 100, height: 100)
        
        Image(systemName: "person.3.sequence.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
        //aqui podemos modificar el relleno del simbolo, sin necesitar de rendering mode ya que el mismo simbolo cuenta con esa funcion y permite su modificacion 
            .foregroundColor(.mint)
            
        
        Image(systemName: "person.3.sequence.fill")
            .resizable()
            .scaledToFill()
        
        
    }
}

#Preview {
    IconsAndSFView()
}
