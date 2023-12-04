//
//  ButtonView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI

struct ButtonView: View {
    
    @State var saludo: String = ""
    @State var contador: Int = 0
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .frame(height: 500)
                .foregroundColor(.mint)
            
            VStack(spacing: 20){
                
            Text(saludo)
                
                Button(action: { saludo = "Hola usuario"
                }, label: {
                    Text("Aparecer".uppercased()).font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .clipShape(.buttonBorder)
                        
                })
                    
                    
                    
                
                Button("Desaparecer".uppercased()){
                   saludo = ""
                }
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                    .background(.blue)
                    .clipShape(.buttonBorder)
                    
                
               
                Button("\(contador) : pulsaciones".uppercased(), action: {
                        contador += 1
                })
                    .font(.title2)
                    .bold()
                    .foregroundColor(.red)
                    .padding()
                    .background(.yellow)
                    .clipShape(.buttonBorder)
                    .shadow(radius: 10)
                
              
                
                Button(action: { contador = 0
                }, label: {
                    Circle()
                        .fill()
                        .frame(width: 150, height: 150)
                        .shadow(radius: 10)
                        .foregroundColor(.red)
                        .overlay(
                        Image(systemName: "delete.left.fill")
                            .foregroundColor(.yellow)
                            .bold())
                        .font(.system(size: 70, weight: .bold))
                })
                    
            }
        }
    }
}

#Preview {
    ButtonView()
}
