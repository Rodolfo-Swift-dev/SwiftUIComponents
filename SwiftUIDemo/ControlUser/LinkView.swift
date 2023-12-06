//
//  LinkView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI


//Link
//si el User hace tap o clic  en nuestra vista, podemos navegar a una url especificada
//pueden ser url que habran dentro de safari o Universal links
//Universal links


struct LinkView: View {
    
    var body: some View {
        
        
        VStack(alignment: .center, spacing: 30) {
            
            //vista que inserta un link que nos redirecciona a una web, puede ser por el nombre, ruta
            Link("Google", destination: URL(string: "https://www.google.com")!)
                .font(.title)
                .foregroundColor(.black)
                .padding()
                .background(.gray).opacity(0.8)
                .clipShape(.buttonBorder)
            
            //otro inicializador de link con una url del sistema, aqui nos lleva a los ajustes del disósitivo
            Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
                Label("Settings", systemImage: "gear")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(.gray).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .clipShape(.buttonBorder)
            })
            
            //otro inicializador de link mas personalizado
            Link(destination: URL(string: "https://www.Apple.com")!, label: {
                Label("Apple", systemImage: "apple.logo")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(.gray).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .clipShape(.buttonBorder)
                    
            })
        }
        
      
        
    }
}

#Preview {
    LinkView()
}
