//
//  Ac3.swift
//  Refactor
//
//  Created by Edna Sanchez  on 13/09/25.
//

import SwiftUI

struct Ac3: View {
    
@State var imagen: String = " "
    
var body: some View {

    ZStack{
        Image("aserrin")
            .resizable()  //  cambiar tamaño de la imagen
            .scaledToFill()  // imagen cubra toda la pantalla
            .ignoresSafeArea(edges: .all)
        
        VStack{

            Text("Que cuyo quieres ver🐹")
                .frame(width: 350, height: 70)
                .foregroundColor(.black)
                .font(.title)
                .bold()
                .background(Color.cyan)
                .cornerRadius(10)
                .shadow(radius: 5)
           
            Image(imagen)
                .resizable()
                .frame(width: 200, height: 200)
            Button(action:{
                withAnimation(){
                    imagen = "peludo"
                }}){
                    Text("Cuyo Peludo")
                        .foregroundColor(.black)
                        .frame(width: 350, height: 50)
                        .background(Color.cyan)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            Button(action:{
                withAnimation(){
                    imagen = "rapado"
                }}){
                    Text("Cuyo Rapado")
                        .foregroundColor(.black)
                        .frame(width: 350, height: 50)
                        .background(Color.cyan)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            Button(action:{
                withAnimation(){
                    imagen = "pelon"
                }}){
                    Text("Cuyo Pelon")
                        .foregroundColor(.black)
                        .frame(width: 350, height: 50)
                        .background(Color.cyan)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            Button(action:{
                withAnimation(){
                    imagen = ""
                }}){
                    Text("Regresar al menu")
                        .foregroundColor(.black)
                        .frame(width: 350, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }


        }
    }
}
}
#Preview{
Ac3()
}
