//
//  SignUpView.swift
//  iOSAppTemplate
//
//  Created by MAC37 on 25/06/22.
//

import SwiftUI

struct SingUpView: View {

    @StateObject var authViewModel = AuthViewModel()

    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Registrate")
                    .font(.system(size: 25, weight: .black))
                Text("Bienvenido a Poke Tinder, encuentra tu Pokemon favorito")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()

            VStack(spacing: 25) {
                TextField("Ingresar nombre", text: $name)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                    .keyboardType(.emailAddress)

                TextField("Ingresar email", text: $email)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                    .keyboardType(.emailAddress)

                SecureField("Ingresar contraseña", text: $password)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))

                Button {
                    authViewModel.register(name: name, email: email, password: password)
                } label: {
                    Text("Registrarse")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold))
                }
                .frame(maxWidth: .infinity)
                .background(.pink)
                .cornerRadius(8)
            }.padding()
        }
    }
}

struct SingUpView_Previews: PreviewProvider {
    static var previews: some View {
        SingUpView()
    }
}
