//
//  Tarea2.swift
//  HolaMundo
//
//  Created by WIN603 on 29/08/25.
//

import SwiftUI

struct Tarea2: View {
    var body: some View {
    VStack {
            Text("Colombia")
            .font(.title)
            .padding()
        VStack(spacing:0) {
            Rectangle().fill(Color.yellow).frame(height:100)
            Rectangle().fill(Color.blue).frame(height:50)
            Rectangle().fill(Color.red).frame(height:50)
            
        }.frame(width: 300, height: 200)
    VStack {
            Text("Moneda China")
                .font(.title)
                .padding()
        VStack(){
            Circle()
                .fill(Color.green).frame(width: 200, height: 200)
                .overlay(Rectangle().stroke(Color.white, lineWidth: 3).frame(width: 50, height: 50).background(Color.white))
        VStack(){
            Text("Blanco")
                .font(.title)
                .padding()
            Circle()
                .fill(Color.blue).frame(width: 200, height: 200)
                .overlay(Circle().stroke(Color.green).fill(Color.green).frame(width: 100, height: 100))
                .overlay(Circle().stroke(Color.yellow).fill(Color.yellow).frame(width: 30, height: 30))
                .overlay(Circle().stroke(Color.red).fill(Color.red).frame(width: 10, height: 10))
                
            }
            
            
        }
        }
        }
    
    }
}

#Preview {
    Tarea2()
}
