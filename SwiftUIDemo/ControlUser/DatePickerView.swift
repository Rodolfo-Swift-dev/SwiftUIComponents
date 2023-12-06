//
//  DatePickerView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI


//DatePicker
//Vista que permite al usuario seleccionar una fecha, es decir, un selector de fechas
//podemos seleccionar fechaActual - fechaFutura o fechaActual - fechaPasada
//tambien podemos incluso recuperar horas o fecha y hora
//esta vista recibe un parametro de tipo binding String por lo que debemos crear una propiedad mutable @State


struct DatePickerView: View {
    
    @State var currentDate = Date()
    
    var body: some View {
        
        //vista de seleccion de fecha y hora
        DatePicker("Seleccionar fecha", selection: $currentDate)
            .padding()
            .datePickerStyle(.wheel)//puede ser .Automatical
        
        DatePicker("Seleccionar fecha", selection: $currentDate)
            .padding()
            .datePickerStyle(.graphical)
        
        //Date()... seleccionar fechas desde la fecha actual a fechas futuras
        DatePicker("date", selection: $currentDate, in: Date()..., displayedComponents: .date)//ver fecha
            .padding()
        
        //...Date() seleccionar fechas desde la fecha actual hacia fechas pasadas
        DatePicker("Hours", selection: $currentDate, in: ...Date(), displayedComponents:
            .hourAndMinute)//ver cantidad de horas
            .padding()
        
        //dentro del text podemos colocar una fecha y aplicar estilo
        Text(currentDate, style: .date)
            .background(.green.opacity(0.4))
            .padding()
        
    }
        
}

#Preview {
    DatePickerView()
}
