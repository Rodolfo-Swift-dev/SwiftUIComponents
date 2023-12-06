//
//  AxisStack.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI


//Stacks en SwiftUI(VStack, HStack, ZStack)
//son contenedores que nos ayudan a distribuir nuestras vistas a nuestro antojo para poder componer las pantalla de nuestra App.


struct AxisStackView: View {
    
    var body: some View {
        
        //ZStack
        ZStack {
            
            //VStack con alineacion y espacio entre sus elementos
            VStack(alignment: .leading, spacing: 10){
                Text("Rodolfo Gonzalez")
                    .font(.title)
                    .bold()
                
                Text("Developer iOS jr.")
                    .foregroundColor(.gray)
                    .font(.title3)
                
                //HStack
                HStack {
                    
                    Rectangle()
                        .foregroundColor(.mint)
                        .frame(width: 10, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                    //VStack con alineacion y espacio entre sus elementos
                    VStack(alignment: .leading, spacing: 5) {
                        
                        HStack {
                            
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.gray)
                            
                            Text("Swift")
                                .font(.headline)
                                .foregroundColor(.gray)
                            
                        }
                        HStack {
                            
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.gray)
                            
                            Text("SwiftUI")
                                .font(.headline)
                                .foregroundColor(.gray)
                            
                        }
                        HStack {
                            
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.gray)
                            
                            Text("UIKit")
                                .font(.headline)
                                .foregroundColor(.gray)
                            
                        }
                    }
                }
            }
            
            Text("En busca de EMPLEO")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .background(.red)
                .underline()
                .rotationEffect(.degrees(45))
                
               
        }
    }
}

#Preview {
    AxisStackView()
}
