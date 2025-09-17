//
//  Nu.swift
//  HolaMundo
//
//  Created by WIN603 on 17/09/25.
//

import SwiftUI

struct Nu: View {
    @State private var saldoVisible: Bool = true
    @State private var saldoCuenta: Double = 0.0
    @State private var saldoActual: Double = 18.64
    @State private var limiteDisponible: Double = 7981.36
    var body: some View {
        VStack(spacing: 0) {

            // Header morado

        HStack(spacing: 16) {

            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                .font(.title2)
            Spacer()

                

                // Iconos del header (incluye el ojo que alterna)

                HStack(spacing: 16) {

                    Button(action: {

                        withAnimation { saldoVisible.toggle() }

                    }) {

                        Image(systemName: saldoVisible ? "eye" : "eye.slash")

                            .font(.title2)

                    }

                    

                    Image(systemName: "questionmark.circle")

                        .font(.title2)

                    Image(systemName: "person.crop.circle.badge.plus")

                        .font(.title2)

                }

            }

            .padding()

            .foregroundColor(.white)

            .background(Color.purple)

            

            Divider()

            

            // Cuenta Nu (fondo oscuro para simular la tarjeta)

            VStack(alignment: .leading, spacing: 16) {

                Text("Cuenta Nu")

                    .font(.headline)

                    .foregroundColor(.white)

                

                // Saldo de cuenta

                Text(saldoVisible ? "$\(String(format: "%.2f", saldoCuenta))" : "•••••")

                    .font(.largeTitle)

                    .bold()

                    .foregroundColor(.white)

                

                // Row de acciones circulares

                ScrollView(.horizontal, showsIndicators: false) {

                    HStack(spacing: 22) {

                        CircleActionButton(systemImageName: "tray.and.arrow.down.fill",

                                           title: "Recibir y\ndepositar",

                                           badgeText: nil) {

                            // acción Recibir y depositar

                        }

                        

                        CircleActionButton(systemImageName: "arrow.up.right.circle.fill",

                                           title: "Transferir",

                                           badgeText: nil) {

                            // acción Transferir

                        }

                        

                        CircleActionButton(systemImageName: "dollarsign.circle.fill",

                                           title: "Simular\npréstamo",

                                           badgeText: nil) {

                            // acción Simular préstamo

                        }

                        

                        CircleActionButton(systemImageName: "creditcard.fill",

                                           title: "Disponer de\nsaldo",

                                           badgeText: nil) {

                            // acción Disponer de saldo

                        }

                    }

                    .padding(.vertical, 8)

                }

            }

            .padding()

            .background(Color.black) // fondo oscuro para la sección de "Cuenta Nu"

            .cornerRadius(8)

            .padding(.horizontal)

            .padding(.top, 8)

            

            Divider()

                .padding(.top, 8)

            

            // Tarjeta de crédito

            VStack(alignment: .leading, spacing: 10) {

                Text("Tarjeta de crédito")

                    .font(.headline)

                

                Text("Saldo actual")

                    .font(.subheadline)

                    .foregroundColor(.secondary)

                

                Text(saldoVisible ? "$\(String(format: "%.2f", saldoActual))" : "•••••")

                    .font(.title2)

                    .bold()

                

                HStack {

                    Text("Fecha de corte: 16 SEP")

                        .font(.caption)

                        .foregroundColor(.gray)

                    Spacer()

                    Text("Límite disponible:")

                        .font(.caption)

                        .foregroundColor(.gray)

                    Text(saldoVisible ? "$\(String(format: "%.2f", limiteDisponible))" : "•••••")

                        .font(.caption)

                        .foregroundColor(.gray)

                }

                

                Divider()

                

                // Préstamo personal + botón

                HStack {

                    VStack(alignment: .leading) {

                        Text("Préstamo personal")

                            .font(.subheadline)

                            .bold()

                        Text("Simula y descubre en segundos la oferta que tenemos para ti.")

                            .font(.caption)

                            .foregroundColor(.secondary)

                    }

                    Spacer()

                    Button(action: {

                        // acción simular préstamo

                    }) {

                        Text("Simular préstamo")

                            .padding(.vertical, 8)

                            .padding(.horizontal, 14)

                            .background(Color.purple)

                            .foregroundColor(.white)

                            .cornerRadius(12)

                    }

                }

            }

            .padding()

            .background(Color.white)

            .cornerRadius(8)

            .padding(.horizontal)

            .padding(.top, 8)

            

            Divider()

                .padding(.top, 8)

            

            // Descubre más (cards horizontales)

            VStack(alignment: .leading, spacing: 12) {

                Text("Descubre más")

                    .font(.headline)

                    .padding(.horizontal)

                

                ScrollView(.horizontal, showsIndicators: false) {

                    HStack(spacing: 16) {

                        CardView(titulo: "Prueba la Billetera de Google™",

                                 descripcion: "Agrega tu tarjeta de manera rápida y segura.",

                                 boton: "Saber más", imageName: "cat")

                        

                        CardView(titulo: "La era Nu se comparte",

                                 descripcion: "Invita a alguien y consigue beneficios.",

                                 boton: "¡Hazlo aquí!", imageName: "cat")

                    }

                    .padding(.horizontal)

                }

            }

            .padding(.top, 6)

            

            Spacer()

        }

        .ignoresSafeArea() // fondo general

    }

}




// MARK: - CircleActionButton

struct CircleActionButton: View {

    let systemImageName: String

    let title: String

    let badgeText: String?

    let action: () -> Void

    

    var body: some View {

        VStack(spacing: 8) {

            Button(action: action) {

                ZStack {

                    // círculo oscuro como en la imagen

                    Circle()

                        .fill(Color(.sRGB, red: 0.13, green: 0.13, blue: 0.13, opacity: 1.0))

                        .frame(width: 72, height: 72)

                        .shadow(radius: 2)

                    

                    Image(systemName: systemImageName)

                        .font(.title2)

                        .foregroundColor(.white)

                }

            }

            .buttonStyle(PlainButtonStyle())

            .overlay(

                // badge opcional (arriba-derecha)

                Group {

                    if let b = badgeText {

                        Text(b)

                            .font(.caption2)

                            .bold()

                            .padding(.vertical, 4)

                            .padding(.horizontal, 8)

                            .background(Color.purple)

                            .foregroundColor(.white)

                            .clipShape(Capsule())

                            .offset(x: 26, y: -26)

                    }

                }, alignment: .topTrailing

            )

            

            Text(title)

                .font(.caption)

                .multilineTextAlignment(.center)

                .frame(width: 80)

                .foregroundColor(.primary)

        }

    }

}



// MARK: - CardView (fondo cambiado a un color en lugar de secondarySystemBackground)

struct CardView: View {

    let titulo: String

    let descripcion: String

    let boton: String

    let imageName: String   // nuevo parámetro

    

    var body: some View {

        VStack(alignment: .leading, spacing: 8) {

            // Imagen en lugar del rectángulo

            Image(imageName)

                .resizable()

                .scaledToFill()

                .frame(height: 100)

                .frame(maxWidth: .infinity)

                .clipped()

                .cornerRadius(10)

            

            Text(titulo)

                .font(.headline)

            

            Text(descripcion)

                .font(.caption)

                .foregroundColor(.secondary)

            

            Button(action: {}) {

                Text(boton)

                    .font(.footnote)

                    .padding(.vertical, 6)

                    .padding(.horizontal, 12)

                    .background(Color.purple)

                    .foregroundColor(.white)

                    .cornerRadius(8)

            }

        }

        .frame(width: 220)

        .padding()

        .background(Color.purple.opacity(0.06))

        .cornerRadius(12)

        .shadow(radius: 2)

    }

}



struct Nu_Previews: PreviewProvider {

    static var previews: some View {

        Nu()

            .preferredColorScheme(.light)

        

        Nu()

            .preferredColorScheme(.dark)

    }

}
#Preview {
    Nu()
}
