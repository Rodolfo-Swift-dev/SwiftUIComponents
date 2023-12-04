//
//  ColorPickerView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State var color: Color = .white
    
    var body: some View {
        
        VStack {
            
            ZStack {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(height: 200)
                    .padding()
                    
                Circle()
                    .foregroundColor(color)
                    .frame(width: 100)
            }
            
            //vista que permite al usuario seleccinar un color
            ColorPicker("Color", selection: $color)
                .padding()
            .font(.title)
            
            
            Spacer()
        }
          
    }
}

#Preview {
    ColorPickerView()
}
