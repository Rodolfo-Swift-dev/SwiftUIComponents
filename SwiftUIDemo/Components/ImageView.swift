//
//  ImageView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 03-12-23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        //Para debuggear vistas, tenemos que darle play al simulador(no en un dispositivo fisico), luego en la pestaña superior le damos a "debbug", luego a "view debugging" y por ultimo a "capture view hierarchy"
        
        //Formatos Pdf, Svg, Png
        //Imagenes vectorizadas un solo tamaño ajustable
        //Insertar imagenes en carpeta Assets
        //Escala Unica si la imagen es vectorizada
        //seleccionando la imagen seleccionamos la casilla Check Rezisable
        
        
        Image("youtube")
        //renderizar algunas propiedades de la imagen a nuestra eleccion, como el color
            .renderingMode(.template)
        //gracias a rendering mode es que podemos modificar el color de relleno de la imagen
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        //Modificar color de borde de imagen
            .border(.black)
        //Modificar tamaño de contenedor de imagen
            .frame(width: 96, height: 68)
        //Modificar color de borde de contenedor de imagen
            .border(.red)
        
        Image("youtube")
        //con este modificador le indicamos que la imagen rellene todo el espacio de se contenedor
            .resizable()
        //Modificador que va acompañado de Resizable y me indica que la imagen no se distorsione, es decir que rellene el espacio de su contenedor sin distorsionar su apariencia.
            .scaledToFit()
        
        Image("youtube")
        //con este modificador le indicamos que la imagen rellene todo el espacio de se contenedor y con formato de patron
            .resizable(resizingMode: .tile)
        //Modificador que va acompañado de Resizable y me indica que la imagen no se distorsione, es decir que rellene el espacio de su contenedor sin distorsionar su apariencia.
           
            
    }
}

#Preview {
    ImageView()
}
