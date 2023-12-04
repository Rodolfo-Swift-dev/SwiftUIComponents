//
//  TextFieldView.swift
//  SwiftUIDemo
//
//  Created by rodoolfo gonzalez on 04-12-23.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
      
            
                //utilizando el signo $ es que pasamos el valor proyectado, necesario pasar el valor @State a otra vista
        VStack {
            
            
            
            TextField("UserName", text: $username)
                        //teclado disponible para insertar caracteres de correo
                .keyboardType(.emailAddress)
                        //desabilitar autocorreccion en el teclado
                .autocorrectionDisabled(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .clipShape(.rect(cornerRadius: 8))
                .padding(.horizontal, 30)
                //.padding(.top, 20)
                //modificador el cual me captura el dato antes de ser modificado y tambien el nuevo valor del dato modificado.
                //trabaja en compañoa del @State
                .onChange(of: username) { oldValue, newValue in
                    print("Oldvalue = \(oldValue)")
                    print("Newvalue = \(newValue)")
            }
            
            
            Text(username)
                .padding()
                .background(.green.opacity(0.5))
                .clipShape(.rect(cornerRadius: 8))
                .padding(.horizontal, 30)
               
            //campo de texto segura especial para contraseñas ya que no permite ver los caracteres introducidos
            SecureField ("Password", text: $password)
                        //teclado disponible para insertar caracteres de correo
                .keyboardType(.default)
                        //desabilitar autocorreccion en el teclado
                .autocorrectionDisabled(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .clipShape(.rect(cornerRadius: 8))
                .padding(.horizontal, 30)
                //.padding(.top, 20)
                //modificador el cual me captura el dato antes de ser modificado y tambien el nuevo valor del dato modificado.
                //trabaja en compañoa del @State
                .onChange(of: password) { oldValue, newValue in
                    print("Oldvalue = \(oldValue)")
                    print("Newvalue = \(newValue)")
                }
            
            
            Text(password)
                .padding()
                .background(.green.opacity(0.5))
                .clipShape(.rect(cornerRadius: 8))
                .padding(.horizontal, 30)
               
        }
    }
}

#Preview {
    TextFieldView()
}
