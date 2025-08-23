//
//  Tarea1.swift
//  HolaMundo
//
//  Created by WIN603 on 22/08/25.
//

import SwiftUI

struct Tarea1: View {
    var body: some View {
            VStack {
                VStack{
                    HStack{
                        Text("Amarillo").multilineTextAlignment(.center).foregroundStyle(.green)
                        Text("Azul").multilineTextAlignment(.center).foregroundStyle(.red)
                        Text("Naranja").multilineTextAlignment(.center).foregroundStyle(.blue)
                    }.padding(.vertical, 32.0)
                    HStack {
                        Text("NEGRO")
                            .foregroundStyle(.black)
                            .padding()
                            .background(Color.purple)
                            .frame(maxWidth: .infinity)

                        Text("ROJO")
                            .foregroundStyle(.red)
                            .padding(.horizontal, 15.0)
                            .background(Color.cyan)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity)
                    }.padding(.bottom, 32.0)
                    HStack{
                        Text("Verde")
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .fontWeight(.bold)
                            .font(.system(size: 32))
                    }.padding(.bottom, 12.0)
                    HStack{
                        Text("MORADO")
                            .padding([.leading, .bottom, .trailing])
                            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)).border(Color.black, width: 2)
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Text("Prueba de colores")
                            .rotationEffect(.degrees(35))
                            .shadow(color: Color.red, radius: 10)
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Text("Naranja").underline()
                    }
                    .padding([.bottom, .trailing])
                }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.white).padding()
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.black)
        }
    }
#Preview {
    Tarea1()
}
