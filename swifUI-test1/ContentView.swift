//
//  ContentView.swift
//  swifUI-test1
//
//  Created by Jose Luis on 19/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Propiedades del Login del Portal Mobile.
    
    @State private var user = ""
    @State private var password = ""
    
    
    var body: some View {
       VStack() {
               Text("Portal Mobile con SwiftUI")
                .font(.body)
                   .foregroundColor(Color.white)
                   .padding(.all)
               
               Image("portal")
                   .resizable()
                   .frame(width: 200, height: 200) // tamaño de la imagen
                   .clipShape(Circle()) // redondea la imagen
                   .shadow(radius: 10.0, x: 25, y: 12) // añade una sombra
                .padding(.all)
               
                // segundo Stack  con usuario y clave
               VStack( spacing: 25) {
                    TextField("email", text: self.$user)
                        .padding(.all)
                            .background(Color.white)
                            .cornerRadius(30.0)
                   
                    SecureField("clave", text: self.$password)
                        .padding(.all)
                            .background(Color.white)
                            .cornerRadius(30.0)

               }.padding()
               
             // boton de login a Facebook
               Button(action: {
                    // aqui va la accion del boton
                print("Action executed: button Enter")
               }) {
                   Text("Entrar")
                       .foregroundColor(.white)
                       .padding(.all)
                       .frame(width: 350, height: 60)
                       .background(Color.green)
                       .cornerRadius(30.0)
               }.padding(.top, 50)
               
               Spacer()
                
        // Pie de la App con lo tipico de la cuenta
               HStack {
                   Text("¿Has olvidado contraseña? ")
                  .foregroundColor(Color.white)
                
                   Button(action: {
                        // accion del boton de Registrarse
                        print("Action executed: button remember")
                   }) {
                       Text("Recordar")
                        .foregroundColor(Color.green)
                    }
               }
           }
           .background(
            LinearGradient(gradient: Gradient(colors: [Color.init("AzulPortal"),.blue]), startPoint: .top, endPoint: .bottom)
                   .edgesIgnoringSafeArea(.all))
                    // Esto ultimo paraque tenga en cuenta el safe área, sino se corta arriba y abajo
           
       }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Mostramos pantalla en 2 iphone diferentes en el Preview para diseño solo.
        
        Group {
                    ContentView()
                        .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                        .previewDisplayName("11")
                    ContentView()
                        .previewDevice(PreviewDevice(rawValue: "iPhone 8"))

                }
        
    }
}
