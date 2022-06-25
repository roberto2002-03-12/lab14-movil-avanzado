//
//  SignInView.swift
//  iOSAppTemplate
//
//  Created by MAC37 on 25/06/22.
//

import SwiftUI

struct SignInView: View {

    @EnvironmentObject var appState: AppState

    @StateObject var authViewModel = AuthViewModel()

    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    Text("¡Hola de nuevo!")
                        .font(.system(size: 25, weight: .bold))
                    Text("Bienvenido de nuevo, te hemos extrañado")
                        .font(.system(size: 20))
                        .frame(maxWidth: 200)

                    VStack(spacing: 25) {
                        TextField("Ingresar Email", text: $email)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                            .keyboardType(.emailAddress)

                        SecureField("Ingresar Contraseña", text: $password)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))

                        Button {
                            authViewModel.login(email: email, password: password)
                        } label: {
                            Text("Iniciar sesión")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .background(.pink)
                        .cornerRadius(8)

                        NavigationLink(destination: SingUpView()) {
                            Text("¿No estas registrado? registrate ahora")
                        }
                    }.padding()
                }
            }
        }.accentColor(.pink)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
