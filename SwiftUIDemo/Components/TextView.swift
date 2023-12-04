//
//  Text.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 03-12-23.
//

import SwiftUI


struct TextView : View {
    
    var body: some View{
        
        Text("Hello Rodolfo".uppercased())
            .padding()
            .bold()
            .font(.system(size: 50, weight: .bold))
            .background(.cyan)
         
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
            .padding()
            .font(.largeTitle)
            .lineLimit(4)
            .lineSpacing(10.0)
            .underline()
            .rotation3DEffect( .degrees(30),
            axis: (x: 1, y: 0, z: 0)
            )
        
        
        Text("Hello Rodolfo")
            .font(.title3)
            .padding()
        
        //fecha
        Text(Date(), style: .date)
            .font(.title)
        //Temporizador
        Text(Date(), style: .timer)
        //Temporizador relativo
        Text(Date(), style: .relative)
        //Temporizador Offset
        Text(Date(), style: .offset)
        //Temporizador decreciente
        Text(Date().addingTimeInterval(60), style: .timer)
        //Hora
        Text(Date(), style: .time)
        
        
       
           
        
    }
}

#Preview {
    TextView()
}

