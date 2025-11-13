//
//  ContentView.swift
//  UITestingPractice2registration
//
//  Created by mac on 10.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    @State private var errorMessage = ""
    
    var body: some View {
        VStack(spacing: 20) {
            if isLoggedIn {
                Text("Welcome!")
                    .font(.title)
                    .accessibilityIdentifier("welcomeText")
            } else {
                TextField("Username", text: $username)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                     .accessibilityIdentifier("usernameField")
                
                TextField("Email", text: $email)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                     .accessibilityIdentifier("emailField")
                 
                 SecureField("Пароль", text: $password)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                     .accessibilityIdentifier("passwordField")
                
                //inline подсказка об ошибке
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .font(.caption)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .accessibilityIdentifier("errorMessage")
                }
                
                Button("Зарегистрироваться") {
                    if username == "Ryan" && email == "test@test.com" && password == "4265" {
                        isLoggedIn = true
                        errorMessage = ""
                    } else if username.isEmpty || email.isEmpty || password.isEmpty {
                        errorMessage = "Заполните все поля для регистрации"
                    } else {
                        errorMessage = "Некорректно заполнены данные"
                    }
                }
                .accessibilityIdentifier("signUpButton")
                
                Text("Тестовые данные: Ryan / test@test.com / 4265")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
