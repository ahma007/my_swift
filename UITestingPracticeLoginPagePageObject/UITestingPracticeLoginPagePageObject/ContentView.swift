//
//  ContentView.swift
//  UITestingPracticeLoginPagePageObject
//
//  Created by mac on 13.11.2025.
//

import SwiftUI

struct ContentView: View {
    
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
                
                Button("Войти") {
                    if email == "test@test.com" && password == "654265" {
                        isLoggedIn = true
                        errorMessage = ""
                    } else if email.isEmpty || password.isEmpty {
                        errorMessage = "Введите ваш email и пароль"
                    } else {
                        errorMessage = "Неверные email или пароль"
                    }
                }
                .accessibilityIdentifier("loginButton")
                
                Text("Тестовые данные: test@test.com / 654265")
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
